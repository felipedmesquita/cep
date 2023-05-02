require 'minitest/autorun'
require_relative 'cep'

class CepTest < Minitest::Test
  def test_find_state_by_cep
    assert_equal 'São Paulo(SP)', Cep.new('01000-000').state
    assert_equal 'São Paulo(SP)', Cep.new('19999-999').state
    assert_equal 'Rio de Janeiro(RJ)', Cep.new('28000-000').state
    assert_equal 'Rio de Janeiro(RJ)', Cep.new('28999-999').state
    assert_equal 'Espírito Santo(ES)', Cep.new('29000-000').state
    assert_equal 'Espírito Santo(ES)', Cep.new('29999-999').state
    assert_equal 'Minas Gerais(MG)', Cep.new('30000-000').state
    assert_equal 'Minas Gerais(MG)', Cep.new('39999-999').state
    assert_equal 'Paraná(PR)', Cep.new('80000-000').state
    assert_equal 'Paraná(PR)', Cep.new('87999-999').state
    assert_equal 'Santa Catarina(SC)', Cep.new('88000-000').state
    assert_equal 'Santa Catarina(SC)', Cep.new('89999-999').state
    assert_equal 'Rio Grande do Sul(RS)', Cep.new('90000-000').state
    assert_equal 'Rio Grande do Sul(RS)', Cep.new('99999-999').state
    assert_equal 'Bahia(BA)', Cep.new('40000-000').state
    assert_equal 'Bahia(BA)', Cep.new('48999-999').state
    assert_equal 'Sergipe(SE)', Cep.new('49000-000').state
    assert_equal 'Sergipe(SE)', Cep.new('49999-999').state
    assert_equal 'Pernambuco(PE)', Cep.new('50000-000').state
    assert_equal 'Pernambuco(PE)', Cep.new('56999-999').state
    assert_equal 'Alagoas(AL)', Cep.new('57000-000').state
    assert_equal 'Alagoas(AL)', Cep.new('57999-999').state
    assert_equal 'Paraíba(PB)', Cep.new('58000-000').state
    assert_equal 'Paraíba(PB)', Cep.new('58999-999').state
    assert_equal 'Rio Grande do Norte(RN)', Cep.new('59000-000').state
    assert_equal 'Rio Grande do Norte(RN)', Cep.new('59999-999').state
    assert_equal 'Ceará(CE)', Cep.new('60000-000').state
    assert_equal 'Ceará(CE)', Cep.new('63999-999').state
    assert_equal 'Piauí(PI)', Cep.new('64000-000').state
    assert_equal 'Piauí(PI)', Cep.new('64999-999').state
    assert_equal 'Maranhão(MA)', Cep.new('65000-000').state
    assert_equal 'Maranhão(MA)', Cep.new('65999-999').state
    assert_equal 'Pará(PA)', Cep.new('66000-000').state
    assert_equal 'Pará(PA)', Cep.new('68899-999').state
    assert_equal 'Amapá(AP)', Cep.new('68900-000').state
    assert_equal 'Amapá(AP)', Cep.new('68999-999').state
    assert_equal 'Amazonas(AM)', Cep.new('69000-000').state
    assert_equal 'Amazonas(AM)', Cep.new('69299-999').state
    assert_equal 'Roraima(RR)', Cep.new('69300-000').state
    assert_equal 'Roraima(RR)', Cep.new('69399-999').state
    assert_equal 'Amazonas(AM)', Cep.new('69400-000').state
    assert_equal 'Amazonas(AM)', Cep.new('69899-999').state
    assert_equal 'Acre(AC)', Cep.new('69900-000').state
    assert_equal 'Acre(AC)', Cep.new('69999-999').state
    assert_equal 'Rondônia(RO)', Cep.new('76800-000').state
    assert_equal 'Rondônia(RO)', Cep.new('76999-999').state
    assert_equal 'Tocantins(TO)', Cep.new('77000-000').state
    assert_equal 'Tocantins(TO)', Cep.new('77999-999').state
    assert_equal 'Distrito Federal(DF)', Cep.new('70000-000').state
    assert_equal 'Distrito Federal(DF)', Cep.new('72799-999').state
    assert_equal 'Goiás(GO)', Cep.new('72800-000').state
    assert_equal 'Goiás(GO)', Cep.new('72999-999').state
    assert_equal 'Distrito Federal(DF)', Cep.new('73000-000').state
    assert_equal 'Distrito Federal(DF)', Cep.new('73699-999').state
    assert_equal 'Goiás(GO)', Cep.new('73700-000').state
    assert_equal 'Goiás(GO)', Cep.new('76799-999').state
    assert_equal 'Mato Grosso(MT)', Cep.new('78000-000').state
    assert_equal 'Mato Grosso(MT)', Cep.new('78899-999').state
    assert_equal 'Mato Grosso do Sul(MS)', Cep.new('79000-000').state
    assert_equal 'Mato Grosso do Sul(MS)', Cep.new('79999-999').state
  end
end