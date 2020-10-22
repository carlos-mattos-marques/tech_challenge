class CreateStateType < ActiveRecord::Migration[6.0]
  STATES = "'AM', 'MT', 'PB', 'SC', 'PA', 'SP', 'TO', 'PR', 'AL', 'CE', 'RO', 'GO', 'MS', 'RR', 'DF', 'RN', 'MA', 'RJ', 'MG', 'AP', 'AC', 'RS', 'ES', 'BA', 'SE', 'PE', 'PI'".freeze
  def up
    execute <<-SQL
      CREATE TYPE state AS ENUM (#{STATES});
    SQL
  end
  
  def down
    execute <<-SQL
      DROP TYPE state;
    SQL
  end
end
