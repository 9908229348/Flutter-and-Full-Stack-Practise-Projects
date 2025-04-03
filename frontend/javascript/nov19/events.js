function load() {
    const button = document.querySelector("button");
    const div1 = document.querySelector("div");
    const input = document.querySelector("input");
    button?.addEventListener('click', function () {
        alert('Button Clicked');
           const userresponse = confirm("Are you Sure ?");
           console.log(userresponse);
        const userResponsePrompt = prompt("Are you sure ?");
        console.log(userResponsePrompt);
    });

    button?.addEventListener('dbclick', function () {
        alert('Button Clicked');
           const userresponse = confirm("Are you Sure ?");
           console.log(userresponse);
        const userResponsePrompt = prompt("Are you sure ?");
        console.log(userResponsePrompt);
    });

    div1?.addEventListener('mousedown', function () {
        console.log("Mouse down");
    });

    div1?.addEventListener('mouseleave', function () {
        console.log("Mouse leave");
        div1.style.color = 'red';
    });
    div1?.addEventListener('mouseenter', function () {
        console.log("Mouse enter");
        div1.style.color = 'green';
    });
    div1?.addEventListener('mouseout', function () {
        console.log("Mouse out");
    });
    div1?.addEventListener('mouseover', function () {
        console.log("Mouse over");
    });

    input?.addEventListener('keydown', function(){
        console.log('key down');
    });
    input?.addEventListener('keyup', function(){
        console.log('key up');
    });
    input?.addEventListener('blur', function(){
        console.log('blur');
    });
    input?.addEventListener('focus', function(){
        console.log('focus');
    });
}