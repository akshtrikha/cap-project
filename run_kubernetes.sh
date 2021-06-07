dockerpath=akshtrikha/flask-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath:hello flask-app --port=5000

# Step 3:
# List kubernetes pods
kubectl get pods
while [ "$(kubectl describe pods flask-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "POD status: $(kubectl describe pods flask-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
sleep 3
done
echo "POD is running and ready for port forwarding"

# Step 4:
# Forward the container port to a host
kubectl port-forward flask-app 8000:5000
kubectl logs flask-app