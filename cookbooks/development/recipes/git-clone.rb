repo = data_bag_item('repos', 'shelf')

directory repo['destination'] do
  owner   repo['user']
  group   repo['group']
  mode    '0755'
  action  :create
end

git repo['id'] do
   repository  repo['repo']
   action      :checkout
   destination repo['destination']+"/"+repo['id']
   user        repo['user']
   group       repo['group']
end