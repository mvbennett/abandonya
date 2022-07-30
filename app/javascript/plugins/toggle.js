const addToggle = () => {
  const pending = document.querySelector(".pending-container");
  const lenderButton = document.getElementById("lender-pending");

  const toggleLenderPending = () => {
    const isHidden = pending.style.display === "none";
    if (isHidden) {
      pending.style.display = "block";
      lenderButton.innerText = "Awaiting Response ▲";
    } else {
      pending.style.display = "none";
      lenderButton.innerText = "Awaiting Response ▼";
    };
  };

  lenderButton.addEventListener("click", toggleLenderPending);


  const upcomingBookings = document.querySelector(".upcoming-bookings");
  const upcomingButton = document.getElementById("upcoming-button");

  const toggleLenderUpcoming = () => {
    const isHidden = upcomingBookings.style.display === "none";
    if (isHidden) {
      upcomingBookings.style.display = "block";
      upcomingButton.innerText = "Upcoming Bookings ▲";
    } else {
      upcomingBookings.style.display = "none";
      upcomingButton.innerText = "Upcoming Bookings ▼";
    };
  };

  upcomingButton.addEventListener("click", toggleLenderUpcoming);

  const completedBookings = document.querySelector(".completed-bookings");
  const completedButton = document.getElementById("completed-button");

  const toggleLenderCompleted = () => {
    const isHidden = completedBookings.style.display === "none";
    if (isHidden) {
      completedBookings.style.display = "block";
      completedButton.innerText = "Completed Bookings ▲";
    } else {
      completedBookings.style.display = "none";
      completedButton.innerText = "Completed Bookings ▼";
    };
  };

  completedButton.addEventListener("click", toggleLenderCompleted);

  const renterApprovedBookings = document.querySelector(".renter-approved");
  const renterApprovedButton = document.getElementById("renter-approved-button");

  const toggleRenterApproved = () => {
    console.log('clicked');
    const isHidden = renterApprovedBookings.style.display === "none";
    if (isHidden) {
      renterApprovedBookings.style.display = "block";
      renterApprovedButton.innerText = "Approved ▲";
    } else {
      renterApprovedBookings.style.display = "none";
      renterApprovedButton.innerText = "Approved ▼";
    };
  };

  renterApprovedButton.addEventListener("click", toggleRenterApproved);
}

export { addToggle }
