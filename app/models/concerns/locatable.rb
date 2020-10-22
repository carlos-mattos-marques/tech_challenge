module Locatable
  extend ActiveSupport::Concern

  included do
    enum state: { AM: 'AM', MT: 'MT', PB: 'PB', SC: 'SC', PA: 'PA', SP: 'SP', TO: 'TO',
             PR: 'PR', AL: 'AL', CE: 'CE', RO: 'RO', GO: 'GO', MS: 'MS', RR: 'RR', DF: 'DF', RN: 'RN',
             MA: 'MA', RJ: 'RJ', MG: 'MG', AP: 'AP', AC: 'AC', RS: 'RS', ES: 'ES', BA: 'BA', SE: 'SE',
             PE: 'PE', PI: 'PI'
            }

    validates :state, inclusion: { in: states.keys }
  end
end