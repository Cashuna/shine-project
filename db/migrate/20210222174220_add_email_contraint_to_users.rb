class AddEmailContraintToUsers < ActiveRecord::Migration[6.1]
  def up
    execute %{ ALTER TABLE users ADD CONSTRAINT
                  email_must_be_company_issued
                  CHECK (email ~* '^[^@]+@example\\.com$');
    }
  end

  def down
    sql = %{ ALTER TABLE users DROP CONSTRAINT
              email_must_have_company_issued;
    }
    ActiveRecord::Base.connection.execute(sql)
  end
end
