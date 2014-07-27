Here are the details for the tidy data output
from the original example described in the README.md.

SubjectId is the identifier of the subject in the trial

Activity is the activity being performed when the measurement was taken
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Measurement is the type of measurement observed for the subject and activity
	-	Synopsis
		--	The measurement name is a combination of the observation details
			---	t/f
				----	t - time domain signals
				----	f - fast fourier transformations
			---	BodyAcc/GravityAcc
				----	body - body acceleration
				----	gravity - gravity acceleration
			---	Jerk
				----	derivation of acceleration and velocity to determine Jerk signals
			---	Mag
				----	magnitude of the 3-dimensional signals using the Euclidean norm


	--	Please refer to the features_info.txt file in the example data for more detail


Mean is the calculated mean for all the trials for the given subject and activity

