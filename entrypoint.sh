echo "Creating config..."

cat > ./config/setting.json <<EOF
{
    "Discord": {
        "Webhook": $WEBHOOK_URL
    },
    "Skus": [
        $SKUS
    ],
    "Interval": $INTERVAL,
    "MongoUrl": $MONGO_URL
}
EOF

echo "Config created..."
echo "Starting monitor..."

node app.js