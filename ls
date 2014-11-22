
[1mFrom:[0m /home/richard/.rvm/gems/ruby-2.1.4/gems/actionpack-4.1.7/lib/action_controller/metal/instrumentation.rb @ line 32 ActionController::Instrumentation#process_action:

    [1;34m18[0m: [32mdef[0m [1;34mprocess_action[0m(*args)
    [1;34m19[0m:   raw_payload = {
    [1;34m20[0m:     [33m:controller[0m => [1;36mself[0m.class.name,
    [1;34m21[0m:     [33m:action[0m     => [1;36mself[0m.action_name,
    [1;34m22[0m:     [33m:params[0m     => request.filtered_parameters,
    [1;34m23[0m:     [33m:format[0m     => request.format.try([33m:ref[0m),
    [1;34m24[0m:     [33m:method[0m     => request.method,
    [1;34m25[0m:     [33m:path[0m       => (request.fullpath [32mrescue[0m [31m[1;31m"[0m[31munknown[1;31m"[0m[31m[0m)
    [1;34m26[0m:   }
    [1;34m27[0m: 
    [1;34m28[0m:   [1;34;4mActiveSupport[0m::[1;34;4mNotifications[0m.instrument([31m[1;31m"[0m[31mstart_processing.action_controller[1;31m"[0m[31m[0m, raw_payload.dup)
    [1;34m29[0m: 
    [1;34m30[0m:   [1;34;4mActiveSupport[0m::[1;34;4mNotifications[0m.instrument([31m[1;31m"[0m[31mprocess_action.action_controller[1;31m"[0m[31m[0m, raw_payload) [32mdo[0m |payload|
    [1;34m31[0m:     result = [32msuper[0m
 => [1;34m32[0m:     payload[[33m:status[0m] = response.status
    [1;34m33[0m:     append_info_to_payload(payload)
    [1;34m34[0m:     result
    [1;34m35[0m:   [32mend[0m
    [1;34m36[0m: [32mend[0m

