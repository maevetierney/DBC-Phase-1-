class HouseListing
  attr_reader :address, :asking_price, :bedroom_count, :bathroom_count, :square_footage, :listing_type, :listing_id, :year_built

   def initialize(args)
    @address = args.fetch(:address)
    @asking_price = args.fetch(:asking_price)
    @square_footage = args.fetch(:square_footage)
    @listing_type = args.fetch(:listing_type)
    @listing_id = args.fetch(:listing_id)
    @year_built = args.fetch(:year_built)
    @bedroom_count = args.fetch(:bedroom_count){3}    
    @bathroom_count = args.fetch(:bathroom_count){2}
    @active = args.fetch(:active){true}
    @occupied = args.fetch(:occupied){true}
  end

  def active?
    @active
  end

  def occupied?
    @occupied
  end
end