require 'sinatra/base'

class FakeSepomexApi < Sinatra::Base
  get '/api/v1/zipcodes/search' do
    content_type :json
    status 200
    {
      zipcodes: [
        zipcode,
        zipcode
      ],
      meta: meta
    }.to_json
  end

  private

  def zipcode
    {
      id: 85829,
      d_codigo: '64000',
      d_asenta: 'La Finca',
      d_tipo_asenta: 'Colonia',
      d_mnpio: 'Monterrey',
      d_estado: 'Nuevo León',
      d_ciudad: 'Monterrey',
      d_cp: '64008',
      c_estado: '19',
      c_oficina: '64008',
      c_cp: '',
      c_tipo_asenta: '09',
      c_mnpio: '039',
      id_asenta_cpcons: '3429',
      d_zona: 'Urbano',
      c_cve_ciudad: '07'
    }
  end

  def meta
    {
      pagination: {
        per_page: 50,
        total_pages: 19,
        total_objects: 917
      }
    }
  end
end
