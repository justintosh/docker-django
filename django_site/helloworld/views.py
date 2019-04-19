from django.shortcuts import render

def helloworld(request):

    context = {
        'title': 'Hello World'
    }

    return render(request, 'helloworld/index.html', context=context)
