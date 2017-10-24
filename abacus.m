configCluster
vuculescu

ClusterInfo.setProjectName('aubssicoabo_slim')
ClusterInfo.setWallTime('24:00:00')
c = parcluster;
jobs = c.Jobs

j = c.batch(@main_jobrd, 1, {}, 'pool', 5, 'CurrentFolder', '.');
j = c.batch(@main, 1, {}, 'pool', 10, 'CurrentFolder', '.');
jobs = c.Jobs
j = jobs(8);
j.fetchOutputs{:}
j.Parent.getDebugLog(j)