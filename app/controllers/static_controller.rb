class StaticController < ApplicationController

	# def show
	# 	render "/portfolio/#{params[:first]}/#{params[:second]}"
	# end

	def index
		# very simple code to grab all posts so they can be
		# displayed in the Index view (index.html.slim)
		# @page_title = 'Website & Graphic Design Services in Houston, TX'
		@page_description = 'Captivating designs and online journeys for mission-driven individuals, businesses, and brands seeking to establish an authentic online presence.'
	end
	
	def about
		@page_title = 'About'
		@page_description = 'Vanessa Amilet Santos is a web designer & developer based in Atlanta, Georgia providing custom website design services to businesses, creatives, and ecommerce brands nationwide.'
	end

	def services
		@page_title = 'Website Design & Development Services'
		@page_description = 'Expand your business outreach beyond the known and create an engaging online ecosystem that elevates your mission and client experience.'
	end

	def contact
		@page_title = 'Contact'
		@page_description = 'Get in touch with Vanessa Amilet Creative to learn more about custom branding and website design services using the form on this page.'
		@page_keywords = 'Contact Vanessa Amilet Creative'
	end
	
	def portfolio
		@page_title = 'Portfolio'
		@page_description = 'Explore a selection of projects that involved helping businesses, creatives, and ecommerce brands with their web presence and branding.'
	end

	# def portfolio_ecmg
	# end

	def portfolio_mfour
		@page_title = 'MFour'
		@page_description = 'Check out the custom WordPress website I developed for MFour, featuring Gutenberg blocks, Bootstrap, and Sigma integration, enhancing their rebranding efforts.'
	end

	def portfolio_capitalize
		@page_title = 'Capitalize'
		@page_description = 'Developed a custom WordPress theme for Capitalize, supporting their rebrand with Tailwind CSS, SEO optimization, and ongoing site maintenance.'
	end

	def portfolio_firmatek
		@project_title = "Firmatek"
		@page_description = 'Led a complete redesign of Firmatek’s website, including sitemap planning, high-fidelity mockups, and custom WordPress development, delivering an improved user experience and modern design.'
	end

	def portfolio_nonprofit_website
		@project_title = "Nonprofit Website"
		@page_description = 'Designed high-fidelity mockups and developed a custom WordPress site for a philanthropic foundation focused on expanding economic opportunity through entrepreneurship and skilled trades training.'
	end

	def portfolio_community_impact_website
		@project_title = "Community Impact Website"
		@page_description = 'Contributed to the development of a redesigned WordPress site for a nonprofit organization focused on advancing education, financial security, and health equity, improving usability and navigation.'
	end
	
	def portfolio_youthcareer
		@project_title = "Youth Career Resource Website"
		@page_description = 'Designed and developed a responsive WordPress microsite for a youth initiative, providing students and educators with accessible career exploration tools and resources.'
	end

	def portfolio_electricalalliance
		@project_title = "Electrical Industry Partnership Website"
		@page_description ="Designed and developed a modern WordPress website for a leading electrical industry partnership between IBEW Local 26 and NECA Washington, D.C., highlighting training programs and contractor resources."
	end

	def portfolio_outwellnessatx
		@page_title = 'OutWellness ATX'
		@page_description = 'Revamped OutWellness ATX’s website to boost leads and reflect their LGBTQ+ inclusive brand, with responsive design, SEO optimization, and improved user experience.'
	end

	def portfolio_genie
		@page_title = 'Genie Creates'
		@page_description = 'Developed a custom, clean WordPress site for Genie Creates to enhance their online presence, showcasing their construction marketing services and expertise.'
	end

	def portfolio_northbloom
		@page_title = 'North Bloom Construction'
		@page_description = 'Custom WordPress site developed for North Bloom Construction Group, showcasing services and project portfolio to establish a strong online presence.'
	end

	def portfolio_igco
		@page_title = 'IGCO'
		@page_description = 'Check out this custom Wordpress website I developed for IGCO, a small team of creatives based in Houston, Texas.'
	end

	def portfolio_expertly
		@page_title = 'Expertly Sanitized'
	end

	def portfolio_bettyboujee
		@page_title = 'Betty Boujee'
	end

	def portfolio_picnichour
		@page_title = 'The Picnic Hour'
		@page_description = 'Check out this custom Shopify website design I created for a picnic event planning business based in Philadelphia, Pennsylvania.'
	end

	def portfolio_ucs
		@page_title = 'Universal Control Systems'
		@page_description = 'Check out this custom Wordpress website I developed for a energy management system business based in Phoenix, Arizona.'
	end

	def portfolio_nyap
		@page_title = 'Not Your Average Picnic'
		@page_description = 'Check out this custom Shopify website design I created for a picnic event planning business based in Dallas, Texas.'
	end

	def portfolio_captivecolour
		@page_title = 'CaptiveColour Cosmetics'
		@page_description = 'Check out CaptiveColour Cosmetics, a brand I developed for a cosmetic ecommerce company based in Houston, Texas.'
	end
	
	def portfolio_picnics
		@page_title = 'Picnics in the City'
		@page_description = 'Check out this custom Shopify website design I created for Picnics in the City, a picnic event planning business based in Houston, Texas.'
	end

	def portfolio_jumpix
		@page_title = 'Jumpix'
		@page_description = 'Checkout the different items I developed for Jumpix, a cloud-based software. These different items included UX design, website design, motion graphic videos, front-end development for their software, and much more.'
	end

	def portfolio_cia
		@page_title = 'Construction Intern Awards'
		@page_description = 'Check out this Wordpress website redesign for the Construction Intern Awards that helped target the Millenials and Gen Z audience.'
	end

	def portfolio_iba
		@page_title = 'I Build America'
		@page_description = 'Check out this Wordpress website redesign for I Build America, a national movementfocused on building pride in the construction industry.'
	end

	def portfolio_reliantsecurity
		@page_title = 'Reliant Home Security'
		@page_description = 'Reliant needed a revamp to their Security brand for their 2020 Mass campaign. I worked alongside with members of the marketing team to create assets such as webpages, emails, graphics and videos for social posts, and much more.'
	end

	def portfolio_reliantmass
		@page_title = 'Reliant Mass Campaign'
		@page_description = 'Check out the website designs I developed for the Reliant 2021 Mass campaign.'
	end

	def portfolio_joshespin
		@page_title = 'Josh Espinoza Photography'
		@page_description = 'I worked closely with Josh Espinoza hand in hand to develop a design based on his photography and color scheme he had chosen. The solution was to create a custom Wordpress theme that that showcased his photos in beautiful galleries.'
	end

	def portfolio_snapple
		@page_title = 'Snapple Commercial'
		@page_description = 'Check out this fun motion graphics video I created based on the Snapple beverages.'
	end
	
	def faqs
		@page_title = 'FAQs'
		@page_description = 'Find answers and general information about the work and services provided by Vanessa Amilet Santos.'
	end

	def privacy_policy
		@page_title = 'Privacy Policy'
		@page_description = 'Website Privacy Policy for Vanessa Amilet.'
	end

	def terms
		@page_title = 'Terms'
		@page_description = 'Website Terms & Conditions for Vanessa Amilet.'
	end
	

	def portfolio_mms
		redirect_to :root
	end

	def portfolio_greenwood
		redirect_to :root
	end

	def portfolio_neydiphotography
		redirect_to :root
	end

	def portfolio_hcss
		redirect_to :root
	end

	def portfolio_apg
		redirect_to :root
		@page_title = 'Allied Power Group'
		@page_description = 'A custom Wordpress website designed & developed for a power generation services business based in Houston, Texas.'
	end

	def portfolio_csl
		redirect_to :root
		@page_title = 'Cameron S. Lee'
		@page_description = 'Cameron S. Lee is an aspiring model and actor based in Houston, Texas. I opted to design and develop the website on WordPress for its ease of administration, allowing the client to make minor updates.'
	end

end
