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

bucket_path: ${jsonencode(bucket_path)}
cloud_parameters:
  no_comma_params: ${jsonencode(cloud_parameters.no_comma_params)}
  private_data: ${jsonencode(cloud_parameters.private_data)}
  prolog_flags: ${jsonencode(cloud_parameters.prolog_flags)}
  resume_rate: ${jsonencode(cloud_parameters.resume_rate)}
  resume_timeout: ${jsonencode(cloud_parameters.resume_timeout)}
  scheduler_parameters: ${jsonencode(cloud_parameters.scheduler_parameters)}
  suspend_rate: ${jsonencode(cloud_parameters.suspend_rate)}
  suspend_timeout: ${jsonencode(cloud_parameters.suspend_timeout)}
  switch_type: ${jsonencode(cloud_parameters.switch_type)}
  topology_param: ${jsonencode(cloud_parameters.topology_param)}
  topology_plugin: ${jsonencode(cloud_parameters.topology_plugin)}
  tree_width: ${jsonencode(cloud_parameters.tree_width)}
cloudsql_secret: ${jsonencode(cloudsql_secret)}
cluster_id: ${jsonencode(cluster_id)}
cgroup_conf_tpl: |
  ${replace(cgroup_conf_tpl, "\n", "\n  ")}
compute_startup_scripts_timeout: ${jsonencode(compute_startup_scripts_timeout)}
controller_network_attachment: ${jsonencode(controller_network_attachment)}
controller_startup_scripts_timeout: ${jsonencode(controller_startup_scripts_timeout)}
controller_state_disk:
  device_name: ${jsonencode(controller_state_disk.device_name)}
disable_default_mounts: ${jsonencode(disable_default_mounts)}
enable_bigquery_load: ${jsonencode(enable_bigquery_load)}
enable_debug_logging: ${jsonencode(enable_debug_logging)}
enable_slurm_auth: ${jsonencode(enable_slurm_auth)}
endpoint_versions:
  compute: ${jsonencode(endpoint_versions.compute)}
epilog_scripts: ${jsonencode(epilog_scripts)}
extra_logging_flags: ${jsonencode(extra_logging_flags)}
google_app_cred_path: ${jsonencode(google_app_cred_path)}
hybrid: ${jsonencode(hybrid)}
install_dir: ${jsonencode(install_dir)}
munge_mount: %{if munge_mount != null}{
  fs_type: ${jsonencode(munge_mount.fs_type)}
  mount_options: ${jsonencode(munge_mount.mount_options)}
  remote_mount: ${jsonencode(munge_mount.remote_mount)}
  server_ip: ${jsonencode(munge_mount.server_ip)}
} %{else} null %{endif}
network_storage:
%{for item in network_storage~}
- server_ip: ${jsonencode(item.server_ip)}
  remote_mount: ${jsonencode(item.remote_mount)}
  local_mount: ${jsonencode(item.local_mount)}
  fs_type: ${jsonencode(item.fs_type)}
  mount_options: ${jsonencode(item.mount_options)}
%{endfor~}
output_dir: ${jsonencode(output_dir)}
project: ${jsonencode(project)}
prolog_scripts: ${jsonencode(prolog_scripts)}
slurm_bin_dir: ${jsonencode(slurm_bin_dir)}
slurm_cluster_name: ${jsonencode(slurm_cluster_name)}
slurm_conf_tpl: |
  ${replace(slurm_conf_tpl, "\n", "\n  ")}
slurm_control_addr: ${jsonencode(slurm_control_addr)}
slurm_control_host: ${jsonencode(slurm_control_host)}
slurm_control_host_port: ${jsonencode(slurm_control_host_port)}
slurm_key_mount: %{if slurm_key_mount != null}{
  fs_type: ${jsonencode(slurm_key_mount.fs_type)}
  mount_options: ${jsonencode(slurm_key_mount.mount_options)}
  remote_mount: ${jsonencode(slurm_key_mount.remote_mount)}
  server_ip: ${jsonencode(slurm_key_mount.server_ip)}
} %{else} null %{endif}
slurm_log_dir: ${jsonencode(slurm_log_dir)}
slurmdbd_conf_tpl: |
  ${replace(slurmdbd_conf_tpl, "\n", "\n  ")}
task_epilog_scripts: ${jsonencode(task_epilog_scripts)}
task_prolog_scripts: ${jsonencode(task_prolog_scripts)}
