module Quovo
  module Enums
    class AccountType
      include Ruby::Enum

      define :TYPE_401A, '401a'
      define :TYPE_401K, '401k'
      define :TYPE_403B, '403b'
      define :TYPE_457B, '457b'
      define :TYPE_529, '529'
      define :ALTERNATIVE, 'Alternative'
      define :ANNUITY, 'Annuity'
      define :AUTO_LOAN, 'Auto Loan'
      define :BROKERAGE_ACCOUNT, 'Brokerage Account'
      define :CERTIFICATE_OF_DEPOSIT, 'Certificate of Deposit'
      define :CHECKING, 'Checking'
      define :CREDIT_CARD, 'Credit Card'
      define :EDUCATION_SAVINGS_ACCOUNT, 'Education Savings Account'
      define :FIXED_ANNUITY, 'Fixed Annuity'
      define :HEALTH_REIMBURSEMENT_ARRANGEMENT, 'Health Reimbursement Arrangement'
      define :HEALTH_SAVINGS_ACCOUNT, 'Health Savings Account'
      define :HELOC, 'HELOC'
      define :INSURANCE, 'Insurance'
      define :IRA, 'IRA'
      define :LIMITED_PARTNERSHIP, 'Limited Partnership'
      define :LOAN, 'Loan'
      define :MINOR_CUSTODIAL_ACCOUNT, 'Minor Custodial Account'
      define :MISC, 'Misc'
      define :MISC_BANKING, 'Misc Banking'
      define :MORTGAGE, 'Mortgage '
      define :NON_TAXABLE_BROKERAGE_ACCOUNT, 'Non-Taxable Brokerage Account'
      define :PENSION, 'Pension'
      define :PROFIT_SHARING_PLAN, 'Profit Sharing Plan'
      define :REAL_ESTATE, 'Real Estate'
      define :ROTH_401K, 'Roth 401k'
      define :ROTH_IRA, 'Roth IRA'
      define :SAVINGS, 'Savings'
      define :SEP_IRA, 'SEP IRA'
      define :SIMPLE_IRA, 'Simple IRA'
      define :STOCK_PLAN, 'Stock Plan'
      define :STUDENT_LOAN, 'Student Loan'
      define :TERM_LIFE_INSURANCE, 'Term Life Insurance'
      define :THRIFT_SAVINGS_PLAN, 'Thrift Savings Plan'
      define :UGMA, 'UGMA'
      define :UNIVERSAL_LIFE_INSURANCE, 'Universal Life Insurance'
      define :UNKNOWN, 'Unknown'
      define :UTMA, 'UTMA'
      define :VARIABLE_ANNUITY, 'Variable Annuity'
      define :VARIABLE_LIFE_INSURANCE, 'Variable Life Insurance'
      define :WHOLE_LIFE_INSURANCE, 'Whole Life Insurance'
    end
  end
end