ulimit -n 65535 && ulimit -u 65535
ray stop --force
sleep 3
export HCCL_NPU_SOCKET_PORT_RANGE=auto
export HCCL_HOST_SOCKET_PORT_RANGE=auto
export VLLM_ASCEND_ENABLE_NZ=0
export GLOO_SOCKET_IFNAME={GLOO_SOCKET_IFNAME}
export RAY_GLOO_USE_TCP=1
source {cann}/set_env.sh
source {cann}/nnal/atb/set_env.sh
ray start --head