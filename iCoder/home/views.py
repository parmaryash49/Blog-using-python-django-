from django.shortcuts import render, HttpResponse,redirect
from home.models import Contact
from django.contrib import  messages
from blog.models import Post
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout


# Create your views here.
def home(request):
    return render(request, 'home/home.html')
    # return HttpResponse("this is home page...")


def about(request):
     return render(request, 'home/about.html')
    # return HttpResponse("this is about page..")


def contact(request):
    # messages.success(request,'Welcome  to contact')
    # return HttpResponse("this is contact page...")
    if request.method == 'POST':
        name=request.POST['name']
        email=request.POST['email']
        phone=request.POST['phone']
        content=request.POST['content']
        # print(name) 

        if len(name)<2 or len(email)<5 or len(phone)<10 or len(content)<4:
            messages.error(request,"Please fill the form correctly...")
        else:
            contact=Contact(name=name,email=email,phone=phone,content=content)
            contact.save()
            messages.success(request,"Your meessage has been sent successfully..")

    return render (request,'home/contact.html')

def search(request):
    query=request.GET['query']

    if len(query)>20:
        allpost=Post.objects.none()
    else:
    # print("hello this is yash..")
    # print(query)
    # allpost=Post.objects.all()
        allpost_title=Post.objects.filter(title__icontains=query)
        allpost_content=Post.objects.filter(content__icontains=query)
        allpost_author=Post.objects.filter(author__icontains=query)
        allpost=allpost_title.union(allpost_content,allpost_author)

    if allpost.count() == 0:
        messages.warning(request,"No search result is found...")
    
    params={'allpost':allpost,'query':query}
    return render (request,'home/search.html',params)
    # return HttpResponse("this is search...")


def handlesignup(request):
    if request.method=='POST':
        username=request.POST['username']
        fname=request.POST['fname']
        lname=request.POST['lname']
        email=request.POST['email']
        pass1=request.POST['pass1']
        pass2=request.POST['pass2']

        if  not username.islower():
            messages.error(request,"User name must be lower case... ")
            return redirect('home')

        if len(username)>=10:
            messages.error(request,"User name be must be under 10 characters.. ")
            return redirect('home')

        if not username.isalnum():
            messages.error(request,"User name should only contain letters,lowercase and numbers")
            return redirect('home')

        if pass1!=pass2:
            messages.error(request,"password do not match..")
            return redirect('home')

        myuser=User.objects.create_user(username,email,pass1)
        myuser.first_name=fname
        myuser.last_name=lname
        myuser.save()
        messages.success(request,"your account has been successfully created..")
        return redirect('home')

    else:
        return HttpResponse("404 page not found....")   

def handleLogin(request):
    if request.method =='POST':
        loginusername=request.POST['loginusername']
        loginpass=request.POST['loginpass']

        user=authenticate(username=loginusername,password=loginpass)
        if user is not None:
            login(request,user)
            messages.success(request,"Successfully logged In")
            return redirect('home')
        else:
            messages.error(request,"Invalid data...")
            return redirect('home')

    return HttpResponse('404- page Not found...')

        

def handleLogout(request):
    logout(request)
    messages.success(request,"Successfully logged out..")
    return redirect('home')
