class StaticController < ApplicationController

	# def show
	# 	render "/portfolio/#{params[:first]}/#{params[:second]}"
	# end

	def index
		# very simple code to grab all posts so they can be
		# displayed in the Index view (index.html.slim)
		# @page_title = 'Website & Graphic Design Services in Houston, TX'
		@page_description = 'Vanessa Amilet Santos is a freelance web designer & developer based in Houston, Texas providing captivating online journeys for mission-driven individuals, businesses, and brands seeking to establish an authentic online presence.'
	end
	
	def about
		@page_title = 'About'
		@page_description = 'Vanessa Amilet Santos is a freelance web designer & developer based in Houston, Texas providing custom website and graphic design services to businesses, creatives, and ecommerce brands nationwide.'
	end

	def services
		@page_title = 'Services'
		@page_description = 'Vanessa Amilet Santos is a freelance designer and developer in Houston, TX who specializes in custom web design, WordPress development, and graphic design for businesses, creatives, and ecommerce brands nationwide.'
	end

	def contact
		@page_title = 'Contact'
		@page_description = 'Get in touch with Vanessa Amilet Santos to learn more about custom branding and website design services using the form on this page.'
	end
	
	def portfolio
		@page_title = 'Portfolio'
		@page_description = 'Explore a selection of projects that involved helping businesses, creatives, and ecommerce brands with their web presence and branding.'
	end

	# def portfolio_ecmg
	# end

	def portfolio_igco
		@page_title = 'IGCO'
		@page_description = 'Check out this custom Wordpress website I developed for IGCO, a small team of creatives based in Houston, Texas.'
	end

	def portfolio_picnichour
		@page_title = 'The Picnic Hour'
		@page_description = 'Check out this custom Shopify website design I created for a picnic event planning business based in Philadelphia, Pennsylvania.'
	end

	def portfolio_neydiphotography
		@page_title = 'Neydi Photography'
		@page_description = 'Designed a user-friendly website for, Neydi Photography, a photography studio based in Houston, Texas that specializes in natural lighting and outdoor photography.'
	end

	def portfolio_ucs
		@page_title = 'Universal Control Systems'
		@page_description = 'Check out this custom Wordpress website I developed for a energy management system business based in Phoenix, Arizona.'
	end

	def portfolio_nyap
		@page_title = 'Not Your Average Picnic'
		@page_description = 'Check out this custom Shopify website design I created for a picnic event planning business based in Dallas, Texas.'
	end

	def portfolio_apg
		@page_title = 'Allied Power Group'
		@page_description = 'A custom Wordpress website designed & developed for a power generation services business based in Houston, Texas.'
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

	def portfolio_hcss
		@page_title = 'HCSS'
		@page_description = 'A complete Wordpress website restructure & redesign for a construction software company based in Sugar Land, Texas.'
	end

	def portfolio_csl
		@page_title = 'Cameron S. Lee'
		@page_description = 'Cameron S. Lee is an aspiring model and actor based in Houston, Texas. I opted to design and develop the website on WordPress for its ease of administration, allowing the client to make minor updates.'
	end

	def portfolio_greenwood
		@page_title = 'Art of Greenwood'
		@page_description = 'Denise Greenwood is a local Houston Artist that creates 3-D Mixed Media with emphasis on ceramics. Checkout this e-commerce Wordpress website I created for her art shop.'
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
		@page_description = 'Check out this fun motion graphics video I created based on the Snapple beverages..'
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
	

end
