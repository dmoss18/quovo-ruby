module Quovo
  module Enums
    class HoldingType
      include Ruby::Enum

      define :ALTERNATIVE, 'Alternative'
      define :ANNUITY, 'Annuity'
      define :BOND, 'Bond'
      define :CASH, 'Cash'
      define :CLOSED_END_FUND, 'Closed-End Fund'
      define :CURRENCY, 'Currency'
      define :DERIVATIVE, 'Derivative'
      define :ETF, 'ETF'
      define :ETN, 'ETN'
      define :EQUITY, 'Equity'
      define :FOREIGN_EQUITY, 'Foreign Equity'
      define :HEDGE_FUND, 'Hedge Fund'
      define :INDEX, 'Index'
      define :INSURANCE_POLICY, 'Insurance Policy'
      define :LOAN, 'Loan'
      define :LOAN_RECEIVABLE, 'Loan Receivable'
      define :MONEY_MARKET, 'Money Market'
      define :MUTUAL_FUND, 'Mutual Fund'
      define :OPTION, 'Option'
      define :OTHER, 'Other'
      define :OTHER_EQUITY, 'Other Equity'
      define :PREFERRED_STOCK, 'Preferred Stock'
      define :UNKNOWN, 'Unknown'
    end
  end
end
