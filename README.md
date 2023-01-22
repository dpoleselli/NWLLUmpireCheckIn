#  NWLL Umpire Check-In
The primary goal of this project is to get practice building an IOS app. The desired functionality is to serve as a way for NWLL umpires to check-in when they arrive at the field for their game. This will give the league the ability to confirm that the umpire actually showed up to their assigned game without needing to reach out.

## Structure
- `ios/`: This is the IOS app code that follows the [Model-View-ViewModel (MVVM)](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel) pattern.
- `service/`: A simple express app that logs the check in to a Google Sheet