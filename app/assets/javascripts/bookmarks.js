d = document;

d.addEventListener("DOMContentLoaded", () => {
    
    d.addEventListener("turbolinks:load", () => {
        
        let table = d.querySelector("#table-body");
        function renderTable() {
            table.innerHTML = "";
    
            fetch("/bookmarks.json").then(response => response.json()).then(data => {
                data.forEach(element => {
                    let tr = d.createElement("tr");
                    let permittedKeys = ["name", "url_link", "type_name", "category_name"]
                    Object.keys(element).forEach(key => {
                        if (permittedKeys.includes(key)) {
                            let td = d.createElement("td");
                            td.textContent = element[key];
                            tr.appendChild(td);
                        }
                        
                    });
                    
                    let show = d.createElement("a");
                    show.textContent = "edit"
                    show.href = `/bookmarks/${element.id}/edit`
                    tr.appendChild(show);
                    table.appendChild(tr)
                });
    
                
    
                console.log(data);
            });
        }
    
        renderTable();
    
        let newBookmarkForm = d.querySelector("#new-bookmark-form");
    
        newBookmarkForm.addEventListener("submit", e => {
            e.preventDefault();

            if (confirm("Are you sure?")) {
                let bookmarkName = d.querySelector("#name").value;
                let bookmarkUrl = d.querySelector("#url").value;
                let bookmarkTypeId = d.querySelector("#type-id").value;
                let bookmarkCategoryId = d.querySelector("#category-id").value;
        
        
        
                let requestBody = {
                    bookmark: {
                        name: bookmarkName,
                        url: bookmarkUrl,
                        type_id: bookmarkTypeId,
                        category_id: bookmarkCategoryId
                    }
                };
        
                fetch("/bookmarks", {
                    method: "POST",
                    body: JSON.stringify(requestBody),
                    headers: {
                        'Content-Type': 'application/json',
                        'X-Transaction': 'POST',
                        'X-CSRF-Token': d.querySelector("meta[name='csrf-token']").content
                    }
                }).then(response => {
                    if (response.ok) {
                        console.log("Bookmark added successfully");
                    } else {
                        alert("There was a problem adding the bookmark");
                    }
                }).then(data => {
                    renderTable();
                }).catch(error => {
                    console.log(error.message);
                });

            } else {
                alert("Be careful with what you're doing then!");
            }

            newBookmarkForm.reset();
    
        });


    });

});