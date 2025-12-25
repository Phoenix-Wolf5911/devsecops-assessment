# Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY app/package*.json ./
RUN npm install
COPY app ./
RUN npm run build || echo "No build step"

# Run stage
FROM node:18-alpine
WORKDIR /app
COPY --from=build /app .
# Add non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
EXPOSE 3000
CMD ["node", "index.js"]

