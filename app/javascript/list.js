function pullDown() {

  const editButton = document.getElementById("edit-lists")
  const showEditParents = document.getElementById("show-edit-list")
  const pullDownButton = document.getElementById("lists")
  const userMenuParents = document.getElementById("user-menu-list")


  let mouseOverPullDownButton = false;

  pullDownButton.addEventListener("mouseover", function () {
    userMenuParents.style.display = "block";
    mouseOverPullDownButton = true;
  });

  pullDownButton.addEventListener("mouseout", function () {
    mouseOverPullDownButton = false;
    setTimeout(function () {
      if (!mouseOverPullDownButton) {
        userMenuParents.style.display = "none";
      }
    }, 100);
  });

  userMenuParents.addEventListener("mouseover", function () {
    mouseOverPullDownButton = true;
  });

  userMenuParents.addEventListener("mouseout", function () {
    mouseOverPullDownButton = false;
    setTimeout(function () {
      if (!mouseOverPullDownButton) {
        userMenuParents.style.display = "none";
      }
    }, 100);
  });

  
  editButton.addEventListener('click', function() {
    if (showEditParents.getAttribute("style") == "display:block;") {
      showEditParents.removeAttribute("style")
    } else {
      showEditParents.setAttribute("style", "display:block;")
    }
  })


}

window.addEventListener('load', pullDown)