// function onload() {
const boldElement = document.getElementById("bold_element");
// const boldElement = document.getElementsByClassName("bold_element");
// const boldElement = document.getElementsByTagName("bold_element");
boldElement.style.color = "green";
// }

function addClassName() {
    console.log("clicked");
    // boldElement.className = 'boldele';
    boldElement.classList.add('boldele');
    console.log(boldElement);
}

function removeClassName() {
    // boldElement.className = '';
    const result = boldElement.classList.contains('boldele');
    if(result){
        boldElement.classList.remove('boldele');
    }
}

function changeContent(){
    const pele = document.getElementById('p_element');
    console.log(pele.innerHTML);
    pele.innerText = 'Hello All'; //entire mentioned will be added
    // pele.innerHTML = 'hello all'; //if html elemnt we mentioned then only content will shown
}

let uiElement = document.getElementById('ul_container');
let lielem = document.getElementsByClassName('li_element');

function addUlLiEle(){
    console.log(uiElement);
    console.log(lielem);
    const newLi = document.createElement('li');
    const textNode = document.createTextNode('Example added');
    newLi.className = 'li_element';
    newLi.append(textNode);
    uiElement.append(newLi);
}

function removeElement(evnt){
    const ele = document.getElementById('li_element');
    const parentElem = evnt.target.parent;
    parentElem.remove();
}
