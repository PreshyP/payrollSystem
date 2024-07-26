// app/javascript/packs/salary_deductions.js

document.addEventListener('DOMContentLoaded', function() {
  const totalDaysWorkedInput = document.getElementById('salary_deduction_total_days_worked');
  const hoursWorkedInput = document.getElementById('salary_deduction_hrs_worked');
  const taxFeeInput = document.getElementById('salary_deduction_tax_fee');
  const pensionFeeInput = document.getElementById('salary_deduction_pension_fee');
  const netPayInput = document.getElementById('salary_deduction_net_pay');

  function calculateNetPay() {
    const totalDaysWorked = parseFloat(totalDaysWorkedInput.value) || 0;
    const hoursWorked = parseFloat(hoursWorkedInput.value) || 0;
    const taxFee = parseFloat(taxFeeInput.value) || 0;
    const pensionFee = parseFloat(pensionFeeInput.value) || 0;

    const netPay = (totalDaysWorked * hoursWorked) - taxFee - pensionFee;
    netPayInput.value = netPay.toFixed(2); // Format to two decimal places
  }

  totalDaysWorkedInput.addEventListener('input', calculateNetPay);
  hoursWorkedInput.addEventListener('input', calculateNetPay);
  taxFeeInput.addEventListener('input', calculateNetPay);
  pensionFeeInput.addEventListener('input', calculateNetPay);
});
