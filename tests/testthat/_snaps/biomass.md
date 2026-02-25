# biomass_index errors when input is not numeric

    Code
      biomass_index("five", 10)
    Condition
      Error:
      ! 'cpue' must be numeric, got character.

# biomass_index uses verbosity when set as an option

    Code
      biomass_index(cpue = 5, area_swept = 100)
    Message
      calculating biomass index for 1 records
    Output
      [1] 500

