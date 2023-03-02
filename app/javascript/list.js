function pullDown() {

  const editButton = document.getElementById("edit-lists")
  const showEditParents = document.getElementById("show-edit-list")
  const pullDownButton = document.getElementById("lists")
  const userMenuParents = document.getElementById("user-menu-list")

  pullDownButton.addEventListener('click', function() {
    if (userMenuParents.getAttribute("style") == "display:block;") {
      userMenuParents.removeAttribute("style")
    } else {
      userMenuParents.setAttribute("style", "display:block;")
    }
  })
  
  editButton.addEventListener('click', function() {
    if (showEditParents.getAttribute("style") == "display:block;") {
      showEditParents.removeAttribute("style")
    } else {
      showEditParents.setAttribute("style", "display:block;")
    }
  })


}

window.addEventListener('load', pullDown)