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
