class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find {|s| s.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda
      @cash += find_soda(soda_brand).price
      @sodas.delete(soda)
    end
    soda
  end

end
