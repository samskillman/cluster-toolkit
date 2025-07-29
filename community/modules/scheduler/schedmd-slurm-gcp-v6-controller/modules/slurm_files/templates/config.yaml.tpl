#
# Copyright (C) SchedMD LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

bucket_path: ${bucket_path}
cloud_parameters:
  no_comma_params: ${cloud_parameters.no_comma_params}
  private_data: ${jsonencode(cloud_parameters.private_data)}
  prolog_flags: ${cloud_parameters.prolog_flags}
  resume_rate: ${cloud_parameters.resume_rate}
  resume_timeout: ${cloud_parameters.resume_timeout}
  scheduler_parameters: ${jsonencode(cloud_parameters.scheduler_parameters)}
  suspend_rate: ${cloud_parameters.suspend_rate}
  suspend_timeout: ${cloud_parameters.suspend_timeout}
  switch_type: ${cloud_parameters.switch_type}
  topology_param: ${cloud_parameters.topology_param}
  topology_plugin: ${cloud_parameters.topology_plugin}
  tree_width: ${cloud_parameters.tree_width}
cloudsql_secret: ${cloudsql_secret}
cluster_id: ${cluster_id}
cgroup_conf_tpl: |
  ${replace(cgroup_conf_tpl, "\n", "\n  ")}
compute_startup_scripts_timeout: ${compute_startup_scripts_timeout}
controller_network_attachment: ${controller_network_attachment}
controller_startup_scripts_timeout: ${controller_startup_scripts_timeout}
controller_state_disk:
  device_name: ${controller_state_disk.device_name}
disable_default_mounts: ${disable_default_mounts}
enable_bigquery_load: ${enable_bigquery_load}
enable_debug_logging: ${enable_debug_logging}
enable_slurm_auth: ${enable_slurm_auth}
endpoint_versions:
  compute: ${endpoint_versions.compute}
epilog_scripts: ${jsonencode(epilog_scripts)}
extra_logging_flags: ${jsonencode(extra_logging_flags)}
google_app_cred_path: ${google_app_cred_path}
hybrid: ${hybrid}
install_dir: ${install_dir}
munge_mount: %{if munge_mount != null}{
  fs_type: ${munge_mount.fs_type}
  mount_options: ${munge_mount.mount_options}
  remote_mount: ${munge_mount.remote_mount}
  server_ip: ${munge_mount.server_ip}
} %{else} null %{endif}
network_storage:
%{for item in network_storage~}
- server_ip: ${item.server_ip}
  remote_mount: ${item.remote_mount}
  local_mount: ${item.local_mount}
  fs_type: ${item.fs_type}
  mount_options: ${item.mount_options}
%{endfor~}
output_dir: ${output_dir}
project: ${project}
prolog_scripts: ${jsonencode(prolog_scripts)}
slurm_bin_dir: ${slurm_bin_dir}
slurm_cluster_name: ${slurm_cluster_name}
slurm_conf_tpl: |
  ${replace(slurm_conf_tpl, "\n", "\n  ")}
slurm_control_addr: ${slurm_control_addr}
slurm_control_host: ${slurm_control_host}
slurm_control_host_port: ${slurm_control_host_port}
slurm_key_mount: %{if slurm_key_mount != null}{
  fs_type: ${slurm_key_mount.fs_type}
  mount_options: ${slurm_key_mount.mount_options}
  remote_mount: ${slurm_key_mount.remote_mount}
  server_ip: ${slurm_key_mount.server_ip}
} %{else} null %{endif}
slurm_log_dir: ${slurm_log_dir}
slurmdbd_conf_tpl: |
  ${replace(slurmdbd_conf_tpl, "\n", "\n  ")}
task_epilog_scripts: ${jsonencode(task_epilog_scripts)}
task_prolog_scripts: ${jsonencode(task_prolog_scripts)}
