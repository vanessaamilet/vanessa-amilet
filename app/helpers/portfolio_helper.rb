module PortfolioHelper
	def all_projects
	  [
		# Row 1
		{ 
			title: "Geospatial Data & Insights Platform Website", 
			path: portfolio_firmatek_path, 
			img: "portfolio/portfolio-firmatek-website.jpg", 
			label: "Web Design + Development (WordPress), Marketing Campaigns",
			desc: "Simplified complex geospatial offerings into a clear, intuitive marketing website.",
			services: %w[web-design development],
			project_type: %w[website],
			industry: %w[technology construction],
			featured_rank: 1 
		},
		{ 
			title: "Data & AI Consulting Website", 
			path: portfolio_blueprint_path, 
			img: "portfolio/portfolio-blueprint.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Enhanced key website experiences and supported integrated marketing campaigns for evolving data and AI solutions.",
			services: %w[web-design development],
			project_type: %w[website campaign],
			industry: %w[technology professional-services],
			featured_rank: 2 
		},
		{ 
			title: "Capitalize - Fintech Website Redesign", 
			path: portfolio_capitalize_path, 
			img: "portfolio/portfolio-capitalize.jpg", 
			label: "Website Development (WordPress)",
			desc: "Redesigned to support evolving branding and improve content flexibility.",
			project_type: %w[website],
			industry: %w[technology financial],
			featured_rank: 3 
		},
		# Row 2
		{ 
			title: "Connected Consumer Insights Platform Website", 
			path: portfolio_mfour_path, 
			img: "portfolio/portfolio-mfour.jpg", 
			label: "Website Development (WordPress)",
			desc: "Rebuilt to support scalable content, modern branding, and product storytelling.",
			project_type: %w[website],
			industry: %w[technology],
			featured_rank: 5 
		},
		{ 
			title: "Cloud Storage Management Web App", path: portfolio_jumpix_path, 
			img: "portfolio/portfolio-jumpix.jpg", 
			label: "Web Design + Development (Ruby on Rails), UX Design, Media",
			desc: "Designed the user experience, interface, and marketing assets to support product launch and adoption." ,
			project_type: %w[web-app website branding campaign],
  			industry: %w[technology],
			featured_rank: 4 
		},
		{ 
			title: "Inclusive Wellness & Fitness Website", 
			path: portfolio_outwellness_atx_path, 
			img: "portfolio/portfolio-outwellness-atx.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Redesigned the site experience with an inclusive, conversion-friendly layout and improved mobile usability.",
			project_type: %w[website], 
			industry: %w[health-wellness]
		},
		# Row 3
		{ 
			title: "Nonprofit Foundation Website", 
			path: portfolio_foundation_website_path, 
			img: "portfolio/portfolio-nonprofit-website.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Designed to highlight mission, programs, and community impact.",
			project_type: %w[website], 
			industry: %w[nonprofit-community]
		},
		{ 
			title: "Cosmetics Brand & Ecommerce Launch",
			path: portfolio_captivecolour_path,
			img: "portfolio/portfolio-captivecolour.jpg",
			label: "Branding, Web Design + Development (Shopify)",
			desc: "Developed brand identity and e-commerce presence for product launch." ,
			project_type: %w[website campaign branding], 
			industry: %w[consumer-retail] 
		},
		{ 
			title: "Youth Career Resource Website", 
			path: portfolio_youthcareer_path, 
			img: "portfolio/portfolio-youthcareer-website.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Built a dedicated microsite to guide students toward career opportunities.",
			project_type: %w[website], 
			industry: %w[nonprofit-community] 
		},
		# Row 4
		{ 
			title: "Electrical Industry Partnership Website", 
			path: portfolio_electricalalliance_path, 
			img: "portfolio/portfolio-electrical-industry-website.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Redesigned to reflect brand credibility and improve access to training resources.",
			project_type: %w[website], 
			industry: %w[construction] 
		},
		{ 
			title: "Community Impact Website", 
			path: portfolio_community_impact_website_path, 
			img: "portfolio/portfolio-community-impact-website.jpg", 
			label: "Website Development (WordPress)",
			desc: "Restructured to improve navigation and access to essential resources.",
			project_type: %w[website], 
			industry: %w[nonprofit-community] 
		},
		{ 
			title: "Compost & Soil Products Website", 
			path: portfolio_greenerworld_path, 
			img: "portfolio/portfolio-compost-soil-website.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Built to clearly present products and guide users to sales inquiries.",
			project_type: %w[website ecommerce], 
			industry: %w[consumer-retail] 
		},
		# Row 5
		{ 
			title: "Energy Home Security Marketing Campaign",
			path: portfolio_reliantsecurity_path,
			img: "portfolio/portfolio-reliant-security.jpg",
			label: "Web Design + Development, Motion Graphics",
			desc: "Designed campaign assets to promote home security offerings across digital channels.",
			project_type: %w[website landing-page campaign], 
			industry: %w[energy]
		},
		{ 
			title: "Content Marketing Agency Website", 
			path: portfolio_agency_path, 
			img: "portfolio/portfolio-agency-website.jpg", 
			label: "Website Development (WordPress)",
			desc: "Refreshed to showcase services and strengthen brand positioning.",
			project_type: %w[website], 
			industry: %w[professional-services]
		},
		{
			title: "Hispanic Market Energy Campaign Landing Pages",
			path: portfolio_reliantmass_path,
			img: "portfolio/portfolio-reliantmass.jpg",
			label: "Custom Sales Landing Pages",
			desc: "Designed and built conversion-focused landing pages to support a high-volume sales campaign.",
			services: %w[web-design development],
			project_type: %w[campaign landing-page],
			industry: %w[energy]
		},
		# Row 6
		{ 
			title: "Construction Intern Awards",
			path: portfolio_cia_path,
			img: "portfolio/portfolio-cia.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Redesigned and developed a high-traffic campaign site to engage students and sponsors.",
			project_type: %w[website campaign], 
			industry: %w[construction] 
		},
		{ 
			title: "Maryland Local Business Collective Website", 
			path: portfolio_community_path, 
			img: "portfolio/portfolio-community-market-website.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Created an online presence to showcase local businesses ahead of retail launch.",
			project_type: %w[website], 
			industry: %w[nonprofit-community consumer-retail] 
		},
		{ 
			title: "Events by Picnics in the City", 
			path: portfolio_picnics_path, 
			img: "portfolio/portfolio-picnicsinthecity.jpg", 
			label: "Web Design + Development (Shopify)",
			desc: "Updated to highlight expanded services and elevate the customer journey.",
			project_type: %w[website ecommerce], 
			industry: %w[consumer-retail] 
		},
		# Row 7
		{ 
			title: "I Build America", 
			path: portfolio_iba_path, 
			img: "portfolio/portfolio-iba.jpg",
			label: "Web Design + Development (WordPress)",
			desc: "Redesigned to improve the customer journey and highlight members and projects.",
			project_type: %w[website campaign], 
			industry: %w[construction]   
		},
		
		{ 
			title: "Betty Boujee", 
			path: portfolio_bettyboujee_path, 
			img: "portfolio/portfolio-bettyboujee.jpg", 
			label: "Web Design + Development (Shopify)",
			desc: "Designed and developed a brand-forward website to guide users from discovery to inquiry.",
			project_type: %w[website ecommerce], 
			industry: %w[consumer-retail] 
		},
		{ 
			title: "Industrial Energy Services Website", 
			path: portfolio_ucs_path, 
			img: "portfolio/portfolio-ucs.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Redesigned to reflect new branding and clearly present services.",
			project_type: %w[website], 
			industry: %w[energy] 
		},
		# Row 8
		{ 
			title: "Zack Pride - Musician Portfolio Website", 
			path: portfolio_zackpride_path, 
			img: "portfolio/portfolio-zackpride.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Designed a central hub for performances, press, and events.",
			project_type: %w[website branding], 
			industry: %w[arts-entertainment]
		},
		
		{ 
			title: "Construction Marketing Agency Website", path: portfolio_genie_path,
			img: "portfolio/portfolio-genie.jpg",
			label: "Web Design + Development (WordPress)",
			desc: "Designed a clean, professional site to showcase services and industry expertise.",
			project_type: %w[website], 
			industry: %w[construction professional-services]
		 },
		{
			title: "Mar y Sol Therapy & Wellness", 
			path: portfolio_marysol_path, 
			img: "portfolio/portfolio-marysol.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Designed a welcoming site aligned with values of inclusivity and care.",
			project_type: %w[website], 
			industry: %w[health-wellness] 
		},
		# Row 9
		{ 
			title: "Expertly Sanitized", 
			path: portfolio_expertly_path, 
			img: "portfolio/portfolio-expertlysanitized.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Modernized the site to better represent services and improve usability.",
			project_type: %w[website], 
			industry: %w[professional-services]
		},
		{ 
			title: "Consulting Firm Landing Page", path: portfolio_leewardteam_path, 
			img: "portfolio/portfolio-leewardteam.jpg", 
			label: "Landing Page Design + Development (WordPress)",
			desc: "Built a clean landing page to reestablish digital presence.",
			project_type: %w[landing-page], 
			industry: %w[professional-services]
		},
		{ 
			title: "Opera Artist Website Design", 
			path: portfolio_jarrodlee_path, 
			img: "portfolio/portfolio-jarrodlee.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Created an easy-to-manage site for events, press, and media.",
			project_type: %w[website], 
			industry: %w[arts-entertainment] 
		},
		# Row 10
		{ 
			title: "Creative Studio Website Design", 
			path: portfolio_igco_path, 
			img: "portfolio/portfolio-igco.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Designed and developed a website to showcase work, services, and creative expertise.",
			project_type: %w[website], 
			industry: %w[professional-services]
		},
		
		{ 
			title: "North Bloom - Commercial Construction Website", 
			path: portfolio_northbloom_path, 
			img: "portfolio/portfolio-northbloom.jpg", 
			label: "Web Design + Development (WordPress)",
			desc: "Developed a custom construction website to showcase services and project experience.",
			project_type: %w[website], 
			industry: %w[construction]
		},
	  ]
	end

	# Project filter options by industry & project type
	def portfolio_industries
	{
		"Technology" => "technology",
		"Construction" => "construction",
		"Energy" => "energy",
		"Nonprofit & Community" => "nonprofit-community",
		"Health & Wellness" => "health-wellness",
		"Consumer & Retail" => "consumer-retail",
		"Professional Services" => "professional-services",
		"Arts & Entertainment" => "arts-entertainment"
	}
	end

	def portfolio_project_types
	{
		"UX & Website Design" => "website",
		"Web App" => "web-app",
		"E-commerce" => "ecommerce",
		"Landing Page" => "landing-page",
		"Campaign" => "campaign",
		"Branding" => "branding"
	}
	end

	# Retrieves project data by path
	def portfolio_project(project_path)
		all_projects.find { |project| project[:path] == project_path }
	end

	# Randomly displays featured projects on the homepage
	def featured_projects(limit = 3)
	all_projects
		.select { |project| project[:featured_rank] }
		.shuffle
		.first(limit)
	end

	# Random projects displayed on individual portfolio pages
	def random_projects(current_title, limit = 3)
	  all_projects.reject { |p| p[:title] == current_title }.shuffle.first(limit)
	end

	# Previous and next project navigation
	def project_navigation(current_title)
		projects = all_projects
		current_index = projects.index { |p| p[:title] == current_title }
	  
		prev_project = projects[(current_index - 1) % projects.length]
		next_project = projects[(current_index + 1) % projects.length]
	  
		{ prev: prev_project, next: next_project }
	end
	  
  end
  