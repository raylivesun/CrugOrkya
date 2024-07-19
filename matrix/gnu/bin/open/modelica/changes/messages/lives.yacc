/*
the following code is the same as the original
*/

/*
The CSS property 'background-image' is used to set the background image of an element.
In this case, it's set to a linear gradient that transitions from a darker shade of blue to a lighter shade of blue.
*/
body {
    background-image: linear-gradient(to right, #0000FF, #00FFFF);
}

%{
    animation-name: color-change;
    animation-duration: 5s;
    animation-iteration-count: infinite;

    /*
    The animation-timing-function property determines how the animation progresses over time.
    In this case, the animation uses a 'linear' timing function, which means the animation will move
    at a constant speed over the specified duration.
    */

    animation-timing-function: linear;

@keyframes color-change {
    0% {
        background-color: #0000FF;
    }
    50% {
        background-color: #00FFFF;
    }
    100% {
        background-color: #0000FF;
    }

    /*
    The animation-delay property specifies a delay before the animation starts.
    In this case, the animation starts 2 seconds after the page is loaded.
    */
    animation-delay: 2s;
}

SUDO_(animation-delay):
     | a, a + n
     | set<int> a;
     | for (int i = 0; i < a.size(); ++i);
     |     a[i] += 2;
     | return a;
     | cout << "Hello World!\n";

void a(animation: delay) {
    for (int i = 0; i < animation.size(); ++i) {
        cout << "Animation delay: " << animation[i] << " seconds\n";
    }
    cout << "End of animation delays\n";
    SUDO_(animation-delay) = {
     | 1,  2, 3, 4, 6, 8,
     | 10, 12, 14, 16, 18
     | 20, 22, 24, 26, 28
     | 30, 32, 34, 36, 38
     | 40, 42, 44, 46, 48
     | 50, 52, 54, 56, 58
     | 60, 62, 64, 66, 68
     | 70, 72, 74, 76, 78
     | 80, 82, 84, 86, 88
     | 90, 92, 94, 96, 98
     | 100, 102, 104, 106
     | 108, 110, 112, 114
     | 116, 118, 120, 122
     | 124, 126, 128, 130
     | 132, 134, 136, 138
     | 140, 142, 144, 146
     | 148, 150, 152, 154
     | 156, 158, 160, 162
    }

    a(animation-delay);
    cout << "End of animation\n";
    return;
    
}    
     
%}