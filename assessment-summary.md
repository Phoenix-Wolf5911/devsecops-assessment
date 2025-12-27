# DevSecOps Container Security Assessment

## Objectives Completed
- [x] Created secure Dockerfile with non-root user
- [x] Implemented runtime security features:
  - Non-root execution (user: 1001:1001)
  - Read-only filesystem
  - No new privileges
  - Resource limits (CPU: 0.5, Memory: 512MB)
  - Health checks
  - Log rotation
- [x] Successfully built and deployed secure container
- [x] Application remained functional with security enhancements
- [x] Proper cleanup and resource management

## Commands Executed
1. `docker build -t nodeapp-secure -f docker/Dockerfile .`
2. `docker run -d --name nodeapp-secure-production -p 3000:3000 --user 1001:1001 --read-only --tmpfs /tmp --tmpfs /run --security-opt no-new-privileges:true --memory=512M --cpus=0.5 nodeapp-secure`
3. Verified: `curl http://localhost:3000` returned "Hello from Node.js App! Working correctly!"
4. Container showed healthy status in `docker ps`

## Security Features Verified
- ✅ Container runs as non-root user
- ✅ Filesystem is read-only (except /tmp, /run)
- ✅ No privilege escalation possible
- ✅ Resource limits enforced
- ✅ Health monitoring active
