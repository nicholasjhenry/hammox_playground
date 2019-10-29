# HammoxPlayground

Demonstrates the exception with `Decimal.t`:

     test/hammox_playground_test.exs:10
     ** (FunctionClauseError) no function clause matching in Hammox.TypeEngine.match_type/2

     The following arguments were given to Hammox.TypeEngine.match_type/2:

         # 1
         99

         # 2
         {:op, 93, :-, {:integer, 93, 1}}

     Attempted function clauses (showing 10 out of 89):

         def match_type(value, {:type, _, :union, union_types} = union) when is_list(union_types)
         def match_type(_value, {:type, _, :any, []})
         def match_type(value, {:type, _, :none, []} = type)
         def match_type(value, {:type, _, :atom, []}) when is_atom(value)
         def match_type(value, {:type, _, :atom, []} = type)
         def match_type(value, {:type, _, :map, :any}) when is_map(value)
         def match_type(value, {:type, _, :pid, []}) when is_pid(value)
         def match_type(value, {:type, _, :pid, []} = type)
         def match_type(value, {:type, _, :port, []}) when is_port(value)
         def match_type(value, {:type, _, :port, []} = type)

     stacktrace:
       (hammox) lib/hammox/type_engine.ex:6: Hammox.TypeEngine.match_type/2
       (hammox) lib/hammox/type_engine.ex:9: anonymous fn/3 in Hammox.TypeEngine.match_type/2
       (elixir) lib/enum.ex:3325: Enumerable.List.reduce/3
       (elixir) lib/enum.ex:1998: Enum.reduce_while/3
       (hammox) lib/hammox/type_engine.ex:8: Hammox.TypeEngine.match_type/2
       (hammox) lib/hammox/type_engine.ex:364: anonymous fn/3 in Hammox.TypeEngine.match_type/2
       (elixir) lib/enum.ex:1340: anonymous fn/3 in Enum.map/2
       (stdlib) maps.erl:232: :maps.fold_1/3
       (elixir) lib/enum.ex:1964: Enum.map/2
       (hammox) lib/hammox/type_engine.ex:363: anonymous fn/2 in Hammox.TypeEngine.match_type/2
       (elixir) lib/enum.ex:3358: Enumerable.Map.reduce_list/3
       (elixir) lib/enum.ex:1998: Enum.reduce_while/3
       (hammox) lib/hammox/type_engine.ex:361: Hammox.TypeEngine.match_type/2
       (hammox) lib/hammox.ex:295: anonymous fn/2 in Hammox.match_args/2
       (elixir) lib/enum.ex:1336: Enum."-map/2-lists^map/1-0-"/2
       (hammox) lib/hammox.ex:292: Hammox.match_args/2
       (hammox) lib/hammox.ex:279: Hammox.match_call/3
       (hammox) lib/hammox.ex:264: anonymous fn/4 in Hammox.check_call/3
       (elixir) lib/enum.ex:3325: Enumerable.List.reduce/3
       (elixir) lib/enum.ex:1998: Enum.reduce_while/3
