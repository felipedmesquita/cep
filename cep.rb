class Cep
    CEP_RANGES = [
    {range_end: 19999999, state: 'São Paulo(SP)'},
    {range_end: 28999999, state: 'Rio de Janeiro(RJ)'},
    {range_end: 29999999, state: 'Espírito Santo(ES)'},
    {range_end: 39999999, state: 'Minas Gerais(MG)'},
    {range_end: 87999999, state: 'Paraná(PR)'},
    {range_end: 89999999, state: 'Santa Catarina(SC)'},
    {range_end: 99999999, state: 'Rio Grande do Sul(RS)'},
    {range_end: 48999999, state: 'Bahia(BA)'},
    {range_end: 49999999, state: 'Sergipe(SE)'},
    {range_end: 56999999, state: 'Pernambuco(PE)'},
    {range_end: 57999999, state: 'Alagoas(AL)'},
    {range_end: 58999999, state: 'Paraíba(PB)'},
    {range_end: 59999999, state: 'Rio Grande do Norte(RN)'},
    {range_end: 63999999, state: 'Ceará(CE)'},
    {range_end: 64999999, state: 'Piauí(PI)'},
    {range_end: 65999999, state: 'Maranhão(MA)'},
    {range_end: 68899999, state: 'Pará(PA)'},
    {range_end: 68999999, state: 'Amapá(AP)'},
    {range_end: 69299999, state: 'Amazonas(AM)'},
    {range_end: 69399999, state: 'Roraima(RR)'},
    {range_end: 69899999, state: 'Amazonas(AM)'},
    {range_end: 69999999, state: 'Acre(AC)'},
    {range_end: 76999999, state: 'Rondônia(RO)'},
    {range_end: 77999999, state: 'Tocantins(TO)'},
    {range_end: 72799999, state: 'Distrito Federal(DF)'},
    {range_end: 72999999, state: 'Goiás(GO)'},
    {range_end: 73699999, state: 'Distrito Federal(DF)'},
    {range_end: 76799999, state: 'Goiás(GO)'},
    {range_end: 78899999, state: 'Mato Grosso(MT)'},
    {range_end: 79999999, state: 'Mato Grosso do Sul(MS)'}
  ]
    attr_reader :cep, :state
    def initialize(cep)
        @cep = cep.sub('-', '').sub('.', '')
        @state = find_state_by_cep
    end

    def find_state_by_cep
        cep_number = @cep.to_i
        CEP_RANGES.sort_by { |range| range[:range_end] }.each do |cep_range|
          return cep_range[:state] if cep_number <= cep_range[:range_end]
        end
        nil
    end

end


puts Cep.new('69830-000').state # Output: São Paulo(SP)
