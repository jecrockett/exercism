class Prime

  def self.nth nth_prime
    raise ArgumentError unless nth_prime > 0
    upper_bound = calculate_upper_bound(nth_prime)

    could_be_prime = (0..upper_bound).map{|i| true}
    could_be_prime[0] = false
    could_be_prime[1] = false
    i = 0
    while i*i <= upper_bound
      if could_be_prime[i]
        j = i*i
        while j <= upper_bound
          could_be_prime[j] = false
          j += i
        end
      end
      i += 1
    end
    return (2..upper_bound).find_all{|i| could_be_prime[i]}[nth_prime-1]
  end

  private
  def calculate_upper_bound n
    n > 6 ? n*Math.log(n) + n*Math.log(Math.log(n)) : 14
  end
end
