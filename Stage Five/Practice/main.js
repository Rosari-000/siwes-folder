
function add(){
  let li = document.createElement('li');
  li.innerHTML = document.getElementById('task').value + ' <button onclick="this.parentNode.remove()">X</button>';
  li.onclick = () => li.style.textDecoration = 'line-through';
  document.getElementById('list').appendChild(li);
  document.getElementById('task').value = '';}