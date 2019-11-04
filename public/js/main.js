// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButton = document.querySelectorAll('.u-link'), 
        lightbox = document.querySelector('.lightbox');
    
    function renderdescription(socialMedia) {
        return `<ul class="u-social">
            ${socialMedia.map(item => `<li>${item}</li>}`).join('')}
        </ul>`
    }

    function parseUserData(person) { // grabbing user or data is what is targeted in the brackets
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');

        let bioContent = `
            <p>${person.bio}</p>
            ${renderdescription(person.social)}
        `;

        console.log(bioContent);
        
        targetDiv.innerHTML = bioContent;
        targetImg.src = person.imgsrc;

        lightbox.classList.add('show-lb');
    }

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // find the image closest to the anchor tag and get its source property
        let imgSrc = this.previousElementSibling.getAttribute('src');
        let url= `/users/${this.getAttribute('href')}`; // /1, 2, or

        fetch(url) // go get the data
            .then(res => res.json()) // then do this - parse the json results into a plain object
            .then(data => {
                console.log("my database result is:", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch(err => {
                console.log(err)
            });
    }

    userButton.forEach(button => button.addEventListener('click', getUserData));

    lightbox.querySelector('.close').addEventListener('click', function(){
        lightbox.classList.remove('show-lb');
    })
})();