// $(document).on('turbolinks:load', function() {
document.addEventListener('DOMContentLoaded', function() {
    /* ## Navigation
    ---------------------------------------------------------------------------------------------------- */
    //* ### Nav Shrink */
	window.addEventListener('scroll', function(){
		var header = document.querySelector('nav.navbar');
		header.classList.toggle("nav-shrink", window.scrollY > 0);
	});

    /* ## Scroll to Top
    ---------------------------------------------------------------------------------------------------- */
    //Get the button
    let mybutton = document.querySelector('.to-top');

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
    scrollFunction();
    };

    function scrollFunction() {
    if (
        document.body.scrollTop > 20 ||
        document.documentElement.scrollTop > 20
    ) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
    }
    // When the user clicks on the button, scroll to the top of the document
    mybutton.addEventListener("click", backToTop);

    function backToTop() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }


    /* ## Bonsai Contact Form
    ---------------------------------------------------------------------------------------------------- */
    function iframeLoaded() {
        var iFrameID = document.getElementById('bonsai-form');
        if(iFrameID) {
              // here you can make the height, I delete it first, then I make it again
              iFrameID.height = "";
              iFrameID.height = iFrameID.contentWindow.document.body.scrollHeight + "px";
        }   
    }
    
    
    /* ## Load More Btn (For Portfolio)
    ---------------------------------------------------------------------------------------------------- */
	// if (document.body.classList.contains('portfolio')) {
	// 	let columnFour = document.querySelector('.col-md-4');
	// 	const loadMoreBtn = document.getElementById('load-more');
	// 	const cardHidden = [...document.querySelectorAll('.portfolio-grid .col-md-4.load-card')];
	// 	// cardHidden.splice(0, 9).forEach(
	// 	// 	elem => elem.classList.remove('load-card')
	// 	// );
	// 	loadMoreBtn.addEventListener('click', function(e){ // click event for load more
	// 			e.preventDefault();

	// 			// check if any hidden divs still exist
	// 			cardHidden.splice(0, 9).forEach( 
	// 				elem => elem.classList.remove('load-card')
	// 			);
	// 			if (cardHidden.length == 0) {
	// 				loadMoreBtn.classList.add('hidden');
	// 			}
	// 	});
	// }
    // Rows
    // if (document.body.classList.contains('portfolio')) {
    //     const loadMoreBtn = document.getElementById('load-more');
    //     const hiddenRows = [...document.querySelectorAll('.portfolio-grid .row.load-card')];
      
    //     loadMoreBtn.addEventListener('click', function(e) {
    //       e.preventDefault();
      
    //       hiddenRows.splice(0, 2).forEach(row => row.classList.remove('load-card'));
      
    //       if (hiddenRows.length === 0) {
    //         loadMoreBtn.classList.add('hidden');
    //       }
    //     });
    //   }

    // Portfolio filtering and Load More functionality
    if (document.body.classList.contains('portfolio')) {
        const loadMoreBtn = document.getElementById('load-more');
        const loadMoreContainer = document.getElementById('loadMore');

        const industryFilter = document.getElementById('industry-filter');
        const typeFilter = document.getElementById('type-filter');

        const portfolioContainer = document.querySelector('.portfolio-grid .container');

        const projectRows = [...document.querySelectorAll('.portfolio-grid .row')].filter(
            row => row.querySelector('.portfolio-item')
        );

        const projectItems = [...document.querySelectorAll('.portfolio-item')];

        const initiallyHiddenRows = projectRows.filter(row =>
            row.classList.contains('load-card')
        );

        let hiddenRows = [...initiallyHiddenRows];
        let filteredRows = [];

        // Store each project's original row and position
        const originalPositions = projectItems.map((item, index) => ({
            item,
            parent: item.parentElement,
            index
        }));

        // Load More
        loadMoreBtn?.addEventListener('click', function(e) {
            e.preventDefault();

            hiddenRows.splice(0, 2).forEach(row => {
                row.classList.remove('load-card');
            });

            if (hiddenRows.length === 0) {
                loadMoreContainer?.classList.add('hidden');
            }
        });

        // Remove temporary filtered rows
        function removeFilteredRows() {
            filteredRows.forEach(row => row.remove());
            filteredRows = [];
        }

        // Restore projects to their original rows
        function restoreOriginalLayout() {
            removeFilteredRows();

            originalPositions.forEach(({ item, parent }) => {
                parent.appendChild(item);
            });

            projectItems.forEach(item => {
                item.classList.remove('hidden');
            });

            projectRows.forEach(row => {
                row.classList.remove('hidden', 'load-card');
            });

            initiallyHiddenRows.forEach(row => {
                row.classList.add('load-card');
            });

            hiddenRows = [...initiallyHiddenRows];

            if (hiddenRows.length > 0) {
                loadMoreContainer?.classList.remove('hidden');
            }
        }

        // Build temporary rows from matching projects
        function buildFilteredLayout(matchingProjects) {
            removeFilteredRows();

            // Hide original project rows while filtering
            projectRows.forEach(row => {
                row.classList.add('hidden');
            });

            for (let i = 0; i < matchingProjects.length; i += 3) {
                const row = document.createElement('div');
                row.classList.add('row', 'filtered-project-row');

                matchingProjects.slice(i, i + 3).forEach(project => {
                    project.classList.remove('hidden');
                    row.appendChild(project);
                });

                portfolioContainer.insertBefore(row, loadMoreContainer?.parentElement || null);
                filteredRows.push(row);
            }
        }

        // Portfolio Filters
        function filterProjects() {
            const selectedIndustry = industryFilter?.value || 'all';
            const selectedType = typeFilter?.value || 'all';

            const isFiltering =
                selectedIndustry !== 'all' ||
                selectedType !== 'all';

            if (!isFiltering) {
                restoreOriginalLayout();
                return;
            }

            const matchingProjects = projectItems.filter(item => {
                const industries = item.dataset.industry?.split(' ') || [];
                const projectTypes = item.dataset.projectType?.split(' ') || [];

                const industryMatch =
                    selectedIndustry === 'all' ||
                    industries.includes(selectedIndustry);

                const typeMatch =
                    selectedType === 'all' ||
                    projectTypes.includes(selectedType);

                return industryMatch && typeMatch;
            });

            buildFilteredLayout(matchingProjects);

            // Hide Load More while filtering
            loadMoreContainer?.classList.add('hidden');
        }

        industryFilter?.addEventListener('change', filterProjects);
        typeFilter?.addEventListener('change', filterProjects);
    }

    /* ## More Projects Section
    ---------------------------------------------------------------------------------------------------- */
    let elems = document.querySelectorAll(".browse-more .row.projects");
	// let elems = [...document.querySelectorAll('.browse-more .row.projects')];
    if (elems.length) {
        let keep = Math.floor(Math.random() * elems.length);
            for (let i = 0; i < elems.length; ++i) {
                if (i !== keep) {
                    // $(elems[i]).style.display = "none";
					elems[i].classList.add('hidden');
                }
            }
    }
});


/* ## Random
---------------------------------------------------------------------------------------------------- */
console.info("\nDesigned and Developed By Vanessa Amilet Santos")