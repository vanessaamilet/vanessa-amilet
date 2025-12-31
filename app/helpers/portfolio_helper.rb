module PortfolioHelper
	def all_projects
	  [
		{ title: "Firmatek", path: portfolio_firmatek_path, img: "portfolio/portfolio-firmatek-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "OutWellness ATX", path: portfolio_outwellness_atx_path, img: "portfolio/portfolio-outwellness-atx.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Capitalize", path: portfolio_capitalize_path, img: "portfolio/portfolio-capitalize.jpg", label: "Website Development (WordPress)" },
		{ title: "Nonprofit Website", path: portfolio_foundation_website_path, img: "portfolio/portfolio-nonprofit-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "MFour Mobile Research", path: portfolio_mfour_path, img: "portfolio/portfolio-mfour-1.jpg", label: "Website Development (WordPress)" },
		{ title: "Community Impact Website", path: portfolio_community_impact_website_path, img: "portfolio/portfolio-community-impact-website.jpg", label: "Website Development (WordPress)" },
		{ title: "Youth Career Resource Website", path: portfolio_youthcareer_path, img: "portfolio/portfolio-youthcareer-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Compost & Soil Products Website", path: portfolio_greenerworld_path, img: "portfolio/portfolio-compost-soil-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Electrical Industry Partnership Website", path: portfolio_electricalalliance_path, img: "portfolio/portfolio-electrical-industry-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Marketing Agency Website", path: portfolio_agency_path, img: "portfolio/portfolio-agency-website.jpg", label: "Website Development (WordPress)" },
		{ title: "Events by Picnics in the City", path: portfolio_picnics_path, img: "portfolio/portfolio-picnicsinthecity.jpg", label: "Web Design + Development (Shopify)" },
		{ title: "Zack Pride", path: portfolio_zackpride_path, img: "portfolio/portfolio-zackpride.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Community Retail Showcase Website", path: portfolio_community_path, img: "portfolio/portfolio-community-market-website.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Genie Creates", path: portfolio_genie_path, img: "portfolio/portfolio-genie.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Universal Control Systems", path: portfolio_ucs_path, img: "portfolio/portfolio-ucs.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Mar y Sol Therapy & Wellness", path: portfolio_marysol_path, img: "portfolio/portfolio-marysol.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Jumpix", path: portfolio_jumpix_path, img: "portfolio/portfolio-jumpix.jpg", label: "Web Design + Development (Ruby on Rails), UX Design, Media" },
		{ title: "The Leeward Team", path: portfolio_leewardteam_path, img: "portfolio/portfolio-leewardteam.jpg", label: "Landing Page Design + Development (WordPress)" },
		{ title: "Betty Boujee", path: portfolio_bettyboujee_path, img: "portfolio/portfolio-bettyboujee.jpg", label: "Web Design + Development (Shopify)" },
		{ title: "Expertly Sanitized", path: portfolio_expertly_path, img: "portfolio/portfolio-expertlysanitized.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Jarrod Lee", path: portfolio_jarrodlee_path, img: "portfolio/portfolio-jarrodlee.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "CaptiveColour Cosmetics", path: portfolio_captivecolour_path, img: "portfolio/portfolio-captivecolour.jpg", label: "Branding, Web Design + Development (Shopify)" },
		{ title: "I Build America", path: portfolio_iba_path, img: "portfolio/portfolio-iba.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "IGCO", path: portfolio_igco_path, img: "portfolio/portfolio-igco.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "North Bloom", path: portfolio_northbloom_path, img: "portfolio/portfolio-northbloom.jpg", label: "Web Design + Development (WordPress)" },
		{ title: "Construction Intern Awards", path: portfolio_cia_path, img: "portfolio/portfolio-cia.jpg", label: "Web Design + Development (WordPress)" }
	  ]
	end
  
	def random_projects(current_title, limit = 3)
	  all_projects.reject { |p| p[:title] == current_title }.shuffle.first(limit)
	end

	def project_navigation(current_title)
		projects = all_projects
		current_index = projects.index { |p| p[:title] == current_title }
	  
		prev_project = projects[(current_index - 1) % projects.length]
		next_project = projects[(current_index + 1) % projects.length]
	  
		{ prev: prev_project, next: next_project }
	end
	  
  end
  