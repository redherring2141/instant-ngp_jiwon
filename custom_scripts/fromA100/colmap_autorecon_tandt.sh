#Training data
for DATA in Church #Barn Caterpillar Church Courthouse Ignatius Meetingroom Truck
do
	colmap automatic_reconstructor --image_path ./TrainingData/$DATA/images/ --workspace_path ./TrainingData/$DATA
done

#Advanced
for DATA in Temple #Auditorium Ballroom Courtroom Museum Palace Temple
do
	colmap automatic_reconstructor --image_path ./images/advanced/$DATA/images/ --workspace_path ./images/advanced/$DATA
done

#Intermediate
for DATA in Family Train #Family Francis Horse Lighthouse M60 Panther Playground Train
do
	colmap automatic_reconstructor --image_path ./images/intermediate/$DATA/images/ --workspace_path ./images/intermediate/$DATA
done

