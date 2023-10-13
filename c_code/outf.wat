(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param f64 f64 f64 f64 f64) (result f64)))
  (type (;4;) (func (param i32 i32 i32 i32 i32 i32) (result f64)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result f64)))
  (type (;6;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;7;) (func (param f64 f64 f64 f64) (result f64)))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i64) (result i32)))
  (type (;11;) (func (param i32 f64 f64 f64 f64 f64 f64)))
  (func $__wasm_call_ctors (type 0))
  (func $malloc (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 1
    local.get 1
    i32.load offset=1024
    local.set 2
    local.get 2
    local.get 0
    i32.add
    local.set 3
    i32.const 0
    local.set 4
    local.get 4
    local.get 3
    i32.store offset=1024
    local.get 2
    return)
  (func $free (type 2) (param i32)
    return)
  (func $bezier (type 3) (param f64 f64 f64 f64 f64) (result f64)
    (local f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    f64.const 0x1p+0 (;=1;)
    local.set 5
    local.get 5
    local.get 0
    f64.sub
    local.set 6
    local.get 6
    local.get 6
    f64.mul
    local.set 7
    local.get 6
    local.get 7
    f64.mul
    local.set 8
    f64.const 0x1.8p+1 (;=3;)
    local.set 9
    local.get 6
    local.get 9
    f64.mul
    local.set 10
    local.get 6
    local.get 10
    f64.mul
    local.set 11
    local.get 11
    local.get 0
    f64.mul
    local.set 12
    local.get 12
    local.get 2
    f64.mul
    local.set 13
    local.get 8
    local.get 1
    f64.mul
    local.set 14
    local.get 14
    local.get 13
    f64.add
    local.set 15
    local.get 10
    local.get 0
    f64.mul
    local.set 16
    local.get 16
    local.get 0
    f64.mul
    local.set 17
    local.get 17
    local.get 3
    f64.mul
    local.set 18
    local.get 18
    local.get 15
    f64.add
    local.set 19
    local.get 0
    local.get 0
    f64.mul
    local.set 20
    local.get 20
    local.get 0
    f64.mul
    local.set 21
    local.get 21
    local.get 4
    f64.mul
    local.set 22
    local.get 22
    local.get 19
    f64.add
    local.set 23
    local.get 23
    return)
  (func $loss (type 4) (param i32 i32 i32 i32 i32 i32) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 f64 f64)
    i32.const 0
    local.set 6
    local.get 0
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.gt_s
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      local.get 11
      i32.eqz
      br_if 0 (;@1;)
      i32.const 16
      local.set 12
      local.get 4
      local.get 12
      i32.add
      local.set 13
      i32.const 16
      local.set 14
      local.get 3
      local.get 14
      i32.add
      local.set 15
      i32.const 8
      local.set 16
      local.get 3
      local.get 16
      i32.add
      local.set 17
      i32.const 8
      local.set 18
      local.get 4
      local.get 18
      i32.add
      local.set 19
      i32.const 24
      local.set 20
      local.get 4
      local.get 20
      i32.add
      local.set 21
      i32.const 24
      local.set 22
      local.get 3
      local.get 22
      i32.add
      local.set 23
      i32.const 0
      local.set 24
      local.get 24
      local.set 25
      loop  ;; label = @2
        local.get 27
        local.set 26
        local.get 25
        local.set 28
        i32.const 3
        local.set 29
        local.get 28
        local.get 29
        i32.shl
        local.set 30
        local.get 1
        local.get 30
        i32.add
        local.set 31
        local.get 31
        f64.load
        local.set 32
        i32.const 3
        local.set 33
        local.get 28
        local.get 33
        i32.shl
        local.set 34
        local.get 5
        local.get 34
        i32.add
        local.set 35
        local.get 35
        f64.load
        local.set 36
        local.get 3
        f64.load
        local.set 37
        local.get 4
        f64.load
        local.set 38
        local.get 13
        f64.load
        local.set 39
        local.get 15
        f64.load
        local.set 40
        local.get 36
        local.get 37
        local.get 38
        local.get 39
        local.get 40
        call $bezier
        local.set 41
        local.get 32
        local.get 41
        f64.sub
        local.set 42
        local.get 31
        f64.load
        local.set 43
        local.get 35
        f64.load
        local.set 44
        local.get 3
        f64.load
        local.set 45
        local.get 4
        f64.load
        local.set 46
        local.get 13
        f64.load
        local.set 47
        local.get 15
        f64.load
        local.set 48
        local.get 44
        local.get 45
        local.get 46
        local.get 47
        local.get 48
        call $bezier
        local.set 49
        local.get 43
        local.get 49
        f64.sub
        local.set 50
        i32.const 3
        local.set 51
        local.get 28
        local.get 51
        i32.shl
        local.set 52
        local.get 2
        local.get 52
        i32.add
        local.set 53
        local.get 53
        f64.load
        local.set 54
        local.get 35
        f64.load
        local.set 55
        local.get 17
        f64.load
        local.set 56
        local.get 19
        f64.load
        local.set 57
        local.get 21
        f64.load
        local.set 58
        local.get 23
        f64.load
        local.set 59
        local.get 55
        local.get 56
        local.get 57
        local.get 58
        local.get 59
        call $bezier
        local.set 60
        local.get 54
        local.get 60
        f64.sub
        local.set 61
        local.get 53
        f64.load
        local.set 62
        local.get 35
        f64.load
        local.set 63
        local.get 17
        f64.load
        local.set 64
        local.get 19
        f64.load
        local.set 65
        local.get 21
        f64.load
        local.set 66
        local.get 23
        f64.load
        local.set 67
        local.get 63
        local.get 64
        local.get 65
        local.get 66
        local.get 67
        call $bezier
        local.set 68
        local.get 62
        local.get 68
        f64.sub
        local.set 69
        local.get 61
        local.get 69
        f64.mul
        local.set 70
        local.get 42
        local.get 50
        f64.mul
        local.set 71
        local.get 71
        local.get 70
        f64.add
        local.set 72
        local.get 72
        f64.sqrt
        local.set 73
        local.get 26
        local.get 73
        f64.add
        local.set 74
        i32.const 1
        local.set 75
        local.get 28
        local.get 75
        i32.add
        local.set 76
        local.get 76
        local.set 77
        local.get 0
        local.set 78
        local.get 77
        local.get 78
        i32.eq
        local.set 79
        i32.const 1
        local.set 80
        local.get 79
        local.get 80
        i32.and
        local.set 81
        local.get 76
        local.set 25
        local.get 74
        local.set 27
        local.get 74
        local.set 82
        local.get 81
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 82
    local.set 83
    local.get 83
    return)
  (func $dloss (type 5) (param i32 i32 i32 i32 i32 i32 i32 i32) (result f64)
    (local f64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    call $diffeloss
    local.get 8
    return)
  (func $diffeloss (type 6) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 i64 i32 i64 i32 i64 i64 i32 i64 i64 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i64 i64 i32 i32 i32 i32 f64 i32 f64 i32 f64 i32 f64 f64 f64 f64 f64 i32 f64 f64 f64 i32 f64 i32 i32 f64 f64 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 f64 f64 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 8
    i32.const 96
    local.set 9
    local.get 8
    local.get 9
    i32.sub
    local.set 10
    local.get 10
    global.set $__stack_pointer
    i32.const 0
    local.set 11
    local.get 0
    local.get 11
    i32.gt_s
    local.set 12
    local.get 0
    local.get 11
    local.get 12
    select
    local.set 13
    local.get 13
    local.set 14
    local.get 14
    i64.extend_i32_u
    local.set 15
    i64.const 3
    local.set 16
    local.get 15
    local.get 16
    i64.shl
    local.set 17
    i64.const 8
    local.set 18
    local.get 17
    local.get 18
    i64.add
    local.set 19
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 20
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 21
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 22
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 23
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 24
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 25
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 26
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 27
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 28
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 29
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 30
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 31
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 32
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 33
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 34
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 35
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 36
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 37
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 38
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 39
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 40
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 41
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 42
    local.get 19
    call $.Lmalloc_bitcast_invalid
    local.set 43
    i32.const 0
    local.set 44
    local.get 0
    local.set 45
    local.get 44
    local.set 46
    local.get 45
    local.get 46
    i32.gt_s
    local.set 47
    i32.const 1
    local.set 48
    local.get 47
    local.get 48
    i32.and
    local.set 49
    block  ;; label = @1
      local.get 49
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      f64.load
      local.set 50
      local.get 4
      f64.load
      local.set 51
      local.get 4
      f64.load offset=16
      local.set 52
      local.get 3
      f64.load offset=16
      local.set 53
      local.get 3
      f64.load offset=8
      local.set 54
      local.get 4
      f64.load offset=8
      local.set 55
      local.get 4
      f64.load offset=24
      local.set 56
      local.get 3
      f64.load offset=24
      local.set 57
      i32.const 3
      local.set 58
      local.get 0
      local.get 58
      i32.shl
      local.set 59
      local.get 39
      local.get 6
      local.get 59
      memory.copy
      local.get 34
      local.get 6
      local.get 59
      memory.copy
      local.get 29
      local.get 6
      local.get 59
      memory.copy
      local.get 24
      local.get 6
      local.get 59
      memory.copy
      local.get 0
      local.set 60
      local.get 60
      i64.extend_i32_u
      local.set 61
      i32.const 0
      local.set 62
      i64.const 0
      local.set 63
      local.get 62
      local.set 64
      local.get 63
      local.set 65
      loop  ;; label = @2
        local.get 65
        local.set 66
        local.get 64
        local.set 67
        i64.const 1
        local.set 68
        local.get 66
        local.get 68
        i64.add
        local.set 69
        i32.const 3
        local.set 70
        local.get 67
        local.get 70
        i32.shl
        local.set 71
        local.get 1
        local.get 71
        i32.add
        local.set 72
        local.get 72
        f64.load
        local.set 73
        i32.const 3
        local.set 74
        local.get 67
        local.get 74
        i32.shl
        local.set 75
        local.get 6
        local.get 75
        i32.add
        local.set 76
        local.get 76
        f64.load
        local.set 77
        local.get 77
        local.get 50
        local.get 51
        local.get 52
        local.get 53
        call $augmented_bezier
        local.set 78
        local.get 73
        local.get 78
        f64.sub
        local.set 79
        i32.const 3
        local.set 80
        local.get 67
        local.get 80
        i32.shl
        local.set 81
        local.get 20
        local.get 81
        i32.add
        local.set 82
        local.get 82
        local.get 79
        f64.store
        i32.const 3
        local.set 83
        local.get 67
        local.get 83
        i32.shl
        local.set 84
        local.get 43
        local.get 84
        i32.add
        local.set 85
        local.get 85
        local.get 53
        f64.store
        i32.const 3
        local.set 86
        local.get 67
        local.get 86
        i32.shl
        local.set 87
        local.get 42
        local.get 87
        i32.add
        local.set 88
        local.get 88
        local.get 52
        f64.store
        i32.const 3
        local.set 89
        local.get 67
        local.get 89
        i32.shl
        local.set 90
        local.get 41
        local.get 90
        i32.add
        local.set 91
        local.get 91
        local.get 51
        f64.store
        i32.const 3
        local.set 92
        local.get 67
        local.get 92
        i32.shl
        local.set 93
        local.get 40
        local.get 93
        i32.add
        local.set 94
        local.get 94
        local.get 50
        f64.store
        i32.const 3
        local.set 95
        local.get 67
        local.get 95
        i32.shl
        local.set 96
        local.get 21
        local.get 96
        i32.add
        local.set 97
        local.get 97
        local.get 79
        f64.store
        i32.const 3
        local.set 98
        local.get 67
        local.get 98
        i32.shl
        local.set 99
        local.get 38
        local.get 99
        i32.add
        local.set 100
        local.get 100
        local.get 53
        f64.store
        i32.const 3
        local.set 101
        local.get 67
        local.get 101
        i32.shl
        local.set 102
        local.get 37
        local.get 102
        i32.add
        local.set 103
        local.get 103
        local.get 52
        f64.store
        i32.const 3
        local.set 104
        local.get 67
        local.get 104
        i32.shl
        local.set 105
        local.get 36
        local.get 105
        i32.add
        local.set 106
        local.get 106
        local.get 51
        f64.store
        i32.const 3
        local.set 107
        local.get 67
        local.get 107
        i32.shl
        local.set 108
        local.get 35
        local.get 108
        i32.add
        local.set 109
        local.get 109
        local.get 50
        f64.store
        i32.const 3
        local.set 110
        local.get 67
        local.get 110
        i32.shl
        local.set 111
        local.get 2
        local.get 111
        i32.add
        local.set 112
        local.get 112
        f64.load
        local.set 113
        local.get 77
        local.get 54
        local.get 55
        local.get 56
        local.get 57
        call $augmented_bezier
        local.set 114
        local.get 113
        local.get 114
        f64.sub
        local.set 115
        i32.const 3
        local.set 116
        local.get 67
        local.get 116
        i32.shl
        local.set 117
        local.get 22
        local.get 117
        i32.add
        local.set 118
        local.get 118
        local.get 115
        f64.store
        i32.const 3
        local.set 119
        local.get 67
        local.get 119
        i32.shl
        local.set 120
        local.get 33
        local.get 120
        i32.add
        local.set 121
        local.get 121
        local.get 57
        f64.store
        i32.const 3
        local.set 122
        local.get 67
        local.get 122
        i32.shl
        local.set 123
        local.get 32
        local.get 123
        i32.add
        local.set 124
        local.get 124
        local.get 56
        f64.store
        i32.const 3
        local.set 125
        local.get 67
        local.get 125
        i32.shl
        local.set 126
        local.get 31
        local.get 126
        i32.add
        local.set 127
        local.get 127
        local.get 55
        f64.store
        i32.const 3
        local.set 128
        local.get 67
        local.get 128
        i32.shl
        local.set 129
        local.get 30
        local.get 129
        i32.add
        local.set 130
        local.get 130
        local.get 54
        f64.store
        i32.const 3
        local.set 131
        local.get 67
        local.get 131
        i32.shl
        local.set 132
        local.get 23
        local.get 132
        i32.add
        local.set 133
        local.get 133
        local.get 115
        f64.store
        i32.const 3
        local.set 134
        local.get 67
        local.get 134
        i32.shl
        local.set 135
        local.get 28
        local.get 135
        i32.add
        local.set 136
        local.get 136
        local.get 57
        f64.store
        i32.const 3
        local.set 137
        local.get 67
        local.get 137
        i32.shl
        local.set 138
        local.get 27
        local.get 138
        i32.add
        local.set 139
        local.get 139
        local.get 56
        f64.store
        i32.const 3
        local.set 140
        local.get 67
        local.get 140
        i32.shl
        local.set 141
        local.get 26
        local.get 141
        i32.add
        local.set 142
        local.get 142
        local.get 55
        f64.store
        i32.const 3
        local.set 143
        local.get 67
        local.get 143
        i32.shl
        local.set 144
        local.get 25
        local.get 144
        i32.add
        local.set 145
        local.get 145
        local.get 54
        f64.store
        local.get 69
        i32.wrap_i64
        local.set 146
        local.get 69
        local.set 147
        local.get 61
        local.set 148
        local.get 147
        local.get 148
        i64.eq
        local.set 149
        i32.const 1
        local.set 150
        local.get 149
        local.get 150
        i32.and
        local.set 151
        local.get 146
        local.set 64
        local.get 69
        local.set 65
        local.get 151
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 1
      local.set 152
      local.get 0
      local.set 153
      local.get 152
      local.set 154
      local.get 153
      local.get 154
      i32.lt_s
      local.set 155
      i32.const 1
      local.set 156
      local.get 155
      local.get 156
      i32.and
      local.set 157
      local.get 157
      br_if 0 (;@1;)
      i32.const 24
      local.set 158
      local.get 5
      local.get 158
      i32.add
      local.set 159
      i32.const 8
      local.set 160
      local.get 5
      local.get 160
      i32.add
      local.set 161
      i32.const 16
      local.set 162
      local.get 5
      local.get 162
      i32.add
      local.set 163
      local.get 15
      local.set 164
      loop  ;; label = @2
        local.get 164
        local.set 165
        i32.const 0
        local.set 166
        local.get 166
        f64.convert_i32_s
        drop
        i64.const -1
        local.set 167
        local.get 165
        local.get 167
        i64.add
        local.set 168
        local.get 168
        i32.wrap_i64
        local.set 169
        i32.const 3
        local.set 170
        local.get 169
        local.get 170
        i32.shl
        local.set 171
        local.get 20
        local.get 171
        i32.add
        local.set 172
        local.get 172
        f64.load
        local.set 173
        local.get 21
        local.get 171
        i32.add
        local.set 174
        local.get 174
        f64.load
        local.set 175
        local.get 22
        local.get 171
        i32.add
        local.set 176
        local.get 176
        f64.load
        local.set 177
        local.get 23
        local.get 171
        i32.add
        local.set 178
        local.get 178
        f64.load
        local.set 179
        local.get 177
        local.get 179
        f64.mul
        local.set 180
        local.get 173
        local.get 175
        f64.mul
        local.set 181
        local.get 181
        local.get 180
        f64.add
        local.set 182
        f64.const 0x0p+0 (;=0;)
        local.set 183
        local.get 182
        local.get 183
        f64.eq
        local.set 184
        local.get 182
        f64.sqrt
        local.set 185
        f64.const 0x1p-1 (;=0.5;)
        local.set 186
        local.get 186
        local.get 185
        f64.div
        local.set 187
        i32.const 0
        local.set 188
        local.get 188
        f64.convert_i32_s
        local.set 189
        i32.const 1
        local.set 190
        local.get 184
        local.get 190
        i32.and
        local.set 191
        local.get 189
        local.get 187
        local.get 191
        select
        local.set 192
        local.get 192
        f64.neg
        local.set 193
        local.get 177
        local.get 193
        f64.mul
        local.set 194
        i32.const 3
        local.set 195
        local.get 169
        local.get 195
        i32.shl
        local.set 196
        local.get 24
        local.get 196
        i32.add
        local.set 197
        local.get 197
        f64.load
        local.set 198
        i32.const 3
        local.set 199
        local.get 169
        local.get 199
        i32.shl
        local.set 200
        local.get 25
        local.get 200
        i32.add
        local.set 201
        local.get 201
        f64.load
        local.set 202
        i32.const 3
        local.set 203
        local.get 169
        local.get 203
        i32.shl
        local.set 204
        local.get 26
        local.get 204
        i32.add
        local.set 205
        local.get 205
        f64.load
        local.set 206
        i32.const 3
        local.set 207
        local.get 169
        local.get 207
        i32.shl
        local.set 208
        local.get 27
        local.get 208
        i32.add
        local.set 209
        local.get 209
        f64.load
        local.set 210
        i32.const 3
        local.set 211
        local.get 169
        local.get 211
        i32.shl
        local.set 212
        local.get 28
        local.get 212
        i32.add
        local.set 213
        local.get 213
        f64.load
        local.set 214
        local.get 10
        local.get 198
        local.get 202
        local.get 206
        local.get 210
        local.get 214
        local.get 194
        call $diffebezier
        local.get 10
        f64.load offset=16
        local.set 215
        local.get 10
        f64.load offset=8
        local.set 216
        local.get 10
        f64.load
        local.set 217
        local.get 159
        f64.load
        local.set 218
        local.get 218
        local.get 215
        f64.add
        local.set 219
        local.get 159
        local.get 219
        f64.store
        local.get 161
        f64.load
        local.set 220
        local.get 220
        local.get 216
        f64.add
        local.set 221
        local.get 161
        local.get 221
        f64.store
        i32.const 3
        local.set 222
        local.get 169
        local.get 222
        i32.shl
        local.set 223
        local.get 7
        local.get 223
        i32.add
        local.set 224
        local.get 224
        f64.load
        local.set 225
        local.get 225
        local.get 217
        f64.add
        local.set 226
        local.get 224
        local.get 226
        f64.store
        local.get 179
        local.get 193
        f64.mul
        local.set 227
        i32.const 3
        local.set 228
        local.get 169
        local.get 228
        i32.shl
        local.set 229
        local.get 29
        local.get 229
        i32.add
        local.set 230
        local.get 230
        f64.load
        local.set 231
        i32.const 3
        local.set 232
        local.get 169
        local.get 232
        i32.shl
        local.set 233
        local.get 30
        local.get 233
        i32.add
        local.set 234
        local.get 234
        f64.load
        local.set 235
        i32.const 3
        local.set 236
        local.get 169
        local.get 236
        i32.shl
        local.set 237
        local.get 31
        local.get 237
        i32.add
        local.set 238
        local.get 238
        f64.load
        local.set 239
        i32.const 3
        local.set 240
        local.get 169
        local.get 240
        i32.shl
        local.set 241
        local.get 32
        local.get 241
        i32.add
        local.set 242
        local.get 242
        f64.load
        local.set 243
        i32.const 3
        local.set 244
        local.get 169
        local.get 244
        i32.shl
        local.set 245
        local.get 33
        local.get 245
        i32.add
        local.set 246
        local.get 246
        f64.load
        local.set 247
        i32.const 24
        local.set 248
        local.get 10
        local.get 248
        i32.add
        local.set 249
        local.get 249
        local.get 231
        local.get 235
        local.get 239
        local.get 243
        local.get 247
        local.get 227
        call $diffebezier
        local.get 10
        f64.load offset=40
        local.set 250
        local.get 10
        f64.load offset=32
        local.set 251
        local.get 10
        f64.load offset=24
        local.set 252
        local.get 159
        f64.load
        local.set 253
        local.get 253
        local.get 250
        f64.add
        local.set 254
        local.get 159
        local.get 254
        f64.store
        local.get 161
        f64.load
        local.set 255
        local.get 255
        local.get 251
        f64.add
        local.set 256
        local.get 161
        local.get 256
        f64.store
        local.get 224
        f64.load
        local.set 257
        local.get 257
        local.get 252
        f64.add
        local.set 258
        local.get 224
        local.get 258
        f64.store
        local.get 173
        local.get 193
        f64.mul
        local.set 259
        i32.const 3
        local.set 260
        local.get 169
        local.get 260
        i32.shl
        local.set 261
        local.get 34
        local.get 261
        i32.add
        local.set 262
        local.get 262
        f64.load
        local.set 263
        i32.const 3
        local.set 264
        local.get 169
        local.get 264
        i32.shl
        local.set 265
        local.get 35
        local.get 265
        i32.add
        local.set 266
        local.get 266
        f64.load
        local.set 267
        i32.const 3
        local.set 268
        local.get 169
        local.get 268
        i32.shl
        local.set 269
        local.get 36
        local.get 269
        i32.add
        local.set 270
        local.get 270
        f64.load
        local.set 271
        i32.const 3
        local.set 272
        local.get 169
        local.get 272
        i32.shl
        local.set 273
        local.get 37
        local.get 273
        i32.add
        local.set 274
        local.get 274
        f64.load
        local.set 275
        i32.const 3
        local.set 276
        local.get 169
        local.get 276
        i32.shl
        local.set 277
        local.get 38
        local.get 277
        i32.add
        local.set 278
        local.get 278
        f64.load
        local.set 279
        i32.const 48
        local.set 280
        local.get 10
        local.get 280
        i32.add
        local.set 281
        local.get 281
        local.get 263
        local.get 267
        local.get 271
        local.get 275
        local.get 279
        local.get 259
        call $diffebezier
        local.get 10
        f64.load offset=64
        local.set 282
        local.get 10
        f64.load offset=56
        local.set 283
        local.get 10
        f64.load offset=48
        local.set 284
        local.get 163
        f64.load
        local.set 285
        local.get 285
        local.get 282
        f64.add
        local.set 286
        local.get 163
        local.get 286
        f64.store
        local.get 5
        f64.load
        local.set 287
        local.get 287
        local.get 283
        f64.add
        local.set 288
        local.get 5
        local.get 288
        f64.store
        local.get 224
        f64.load
        local.set 289
        local.get 289
        local.get 284
        f64.add
        local.set 290
        local.get 224
        local.get 290
        f64.store
        local.get 175
        local.get 193
        f64.mul
        local.set 291
        i32.const 3
        local.set 292
        local.get 169
        local.get 292
        i32.shl
        local.set 293
        local.get 39
        local.get 293
        i32.add
        local.set 294
        local.get 294
        f64.load
        local.set 295
        i32.const 3
        local.set 296
        local.get 169
        local.get 296
        i32.shl
        local.set 297
        local.get 40
        local.get 297
        i32.add
        local.set 298
        local.get 298
        f64.load
        local.set 299
        i32.const 3
        local.set 300
        local.get 169
        local.get 300
        i32.shl
        local.set 301
        local.get 41
        local.get 301
        i32.add
        local.set 302
        local.get 302
        f64.load
        local.set 303
        i32.const 3
        local.set 304
        local.get 169
        local.get 304
        i32.shl
        local.set 305
        local.get 42
        local.get 305
        i32.add
        local.set 306
        local.get 306
        f64.load
        local.set 307
        i32.const 3
        local.set 308
        local.get 169
        local.get 308
        i32.shl
        local.set 309
        local.get 43
        local.get 309
        i32.add
        local.set 310
        local.get 310
        f64.load
        local.set 311
        i32.const 72
        local.set 312
        local.get 10
        local.get 312
        i32.add
        local.set 313
        local.get 313
        local.get 295
        local.get 299
        local.get 303
        local.get 307
        local.get 311
        local.get 291
        call $diffebezier
        local.get 10
        f64.load offset=88
        local.set 314
        local.get 10
        f64.load offset=80
        local.set 315
        local.get 10
        f64.load offset=72
        local.set 316
        local.get 163
        f64.load
        local.set 317
        local.get 317
        local.get 314
        f64.add
        local.set 318
        local.get 163
        local.get 318
        f64.store
        local.get 5
        f64.load
        local.set 319
        local.get 319
        local.get 315
        f64.add
        local.set 320
        local.get 5
        local.get 320
        f64.store
        local.get 224
        f64.load
        local.set 321
        local.get 321
        local.get 316
        f64.add
        local.set 322
        local.get 224
        local.get 322
        f64.store
        i64.const 0
        local.set 323
        local.get 168
        local.set 324
        local.get 323
        local.set 325
        local.get 324
        local.get 325
        i64.eq
        local.set 326
        i32.const 1
        local.set 327
        local.get 326
        local.get 327
        i32.and
        local.set 328
        local.get 168
        local.set 164
        local.get 328
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 329
    call $free
    local.get 330
    call $free
    local.get 331
    call $free
    local.get 332
    call $free
    local.get 333
    call $free
    local.get 334
    call $free
    local.get 335
    call $free
    local.get 336
    call $free
    local.get 337
    call $free
    local.get 338
    call $free
    local.get 339
    call $free
    local.get 340
    call $free
    local.get 341
    call $free
    local.get 342
    call $free
    local.get 343
    call $free
    local.get 344
    call $free
    local.get 345
    call $free
    local.get 346
    call $free
    local.get 347
    call $free
    local.get 348
    call $free
    local.get 349
    call $free
    local.get 350
    call $free
    local.get 351
    call $free
    local.get 352
    call $free
    i32.const 96
    local.set 353
    local.get 10
    local.get 353
    i32.add
    local.set 354
    local.get 354
    global.set $__stack_pointer
    return)
  (func $dist (type 7) (param f64 f64 f64 f64) (result f64)
    (local f64 f64 f64 f64 f64 f64)
    local.get 0
    local.get 2
    f64.sub
    local.set 4
    local.get 1
    local.get 3
    f64.sub
    local.set 5
    local.get 5
    local.get 5
    f64.mul
    local.set 6
    local.get 4
    local.get 4
    f64.mul
    local.set 7
    local.get 7
    local.get 6
    f64.add
    local.set 8
    local.get 8
    f64.sqrt
    local.set 9
    local.get 9
    return)
  (func $zerodts (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 2
    local.get 1
    local.set 3
    local.get 2
    local.set 4
    local.get 3
    local.get 4
    i32.gt_s
    local.set 5
    i32.const 1
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    block  ;; label = @1
      local.get 7
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3
      local.set 8
      local.get 1
      local.get 8
      i32.shl
      local.set 9
      i32.const -8
      local.set 10
      local.get 9
      local.get 10
      i32.add
      local.set 11
      i32.const 0
      local.set 12
      local.get 0
      local.get 12
      local.get 11
      memory.fill
    end
    return)
  (func $zeroctrlp (type 2) (param i32)
    (local i64 i32 i32 i32 i32 i32 i32)
    i64.const 0
    local.set 1
    local.get 0
    local.get 1
    i64.store
    i32.const 24
    local.set 2
    local.get 0
    local.get 2
    i32.add
    local.set 3
    local.get 3
    local.get 1
    i64.store
    i32.const 16
    local.set 4
    local.get 0
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.get 1
    i64.store
    i32.const 8
    local.set 6
    local.get 0
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.get 1
    i64.store
    return)
  (func $learn (type 9) (param i32 i32 i32 i32 i32 i32)
    (local f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 f64 i32 i32 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32)
    local.get 3
    f64.load
    local.set 6
    local.get 3
    f64.load offset=8
    local.set 7
    local.get 1
    f64.load
    local.set 8
    local.get 2
    f64.load
    local.set 9
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    call $dist
    local.set 10
    i32.const -1
    local.set 11
    local.get 0
    local.get 11
    i32.add
    local.set 12
    i32.const 1
    local.set 13
    local.get 0
    local.set 14
    local.get 13
    local.set 15
    local.get 14
    local.get 15
    i32.gt_s
    local.set 16
    i32.const 0
    local.set 17
    i32.const 1
    local.set 18
    local.get 16
    local.get 18
    i32.and
    local.set 19
    local.get 17
    local.set 20
    local.get 10
    local.set 21
    block  ;; label = @1
      local.get 19
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 21
        local.set 22
        local.get 20
        local.set 23
        i32.const 3
        local.set 24
        local.get 23
        local.get 24
        i32.shl
        local.set 25
        local.get 5
        local.get 25
        i32.add
        local.set 26
        local.get 26
        local.get 22
        f64.store
        i32.const 3
        local.set 27
        local.get 23
        local.get 27
        i32.shl
        local.set 28
        local.get 1
        local.get 28
        i32.add
        local.set 29
        local.get 29
        f64.load
        local.set 30
        i32.const 3
        local.set 31
        local.get 23
        local.get 31
        i32.shl
        local.set 32
        local.get 2
        local.get 32
        i32.add
        local.set 33
        local.get 33
        f64.load
        local.set 34
        i32.const 1
        local.set 35
        local.get 23
        local.get 35
        i32.add
        local.set 36
        i32.const 3
        local.set 37
        local.get 36
        local.get 37
        i32.shl
        local.set 38
        local.get 1
        local.get 38
        i32.add
        local.set 39
        local.get 39
        f64.load
        local.set 40
        i32.const 3
        local.set 41
        local.get 36
        local.get 41
        i32.shl
        local.set 42
        local.get 2
        local.get 42
        i32.add
        local.set 43
        local.get 43
        f64.load
        local.set 44
        local.get 30
        local.get 34
        local.get 40
        local.get 44
        call $dist
        local.set 45
        local.get 22
        local.get 45
        f64.add
        local.set 46
        local.get 36
        local.set 47
        local.get 12
        local.set 48
        local.get 47
        local.get 48
        i32.eq
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.and
        local.set 51
        local.get 36
        local.set 20
        local.get 46
        local.set 21
        local.get 51
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 21
    local.set 52
    i32.const 3
    local.set 53
    local.get 12
    local.get 53
    i32.shl
    local.set 54
    local.get 5
    local.get 54
    i32.add
    local.set 55
    local.get 55
    local.get 52
    f64.store
    i32.const 3
    local.set 56
    local.get 12
    local.get 56
    i32.shl
    local.set 57
    local.get 1
    local.get 57
    i32.add
    local.set 58
    local.get 58
    f64.load
    local.set 59
    i32.const 3
    local.set 60
    local.get 12
    local.get 60
    i32.shl
    local.set 61
    local.get 2
    local.get 61
    i32.add
    local.set 62
    local.get 62
    f64.load
    local.set 63
    local.get 3
    f64.load offset=16
    local.set 64
    local.get 3
    f64.load offset=24
    local.set 65
    local.get 59
    local.get 63
    local.get 64
    local.get 65
    call $dist
    local.set 66
    local.get 52
    local.get 66
    f64.add
    local.set 67
    i32.const 0
    local.set 68
    local.get 0
    local.set 69
    local.get 68
    local.set 70
    local.get 69
    local.get 70
    i32.gt_s
    local.set 71
    i32.const 0
    local.set 72
    i32.const 1
    local.set 73
    local.get 71
    local.get 73
    i32.and
    local.set 74
    local.get 72
    local.set 75
    block  ;; label = @1
      local.get 74
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 75
        local.set 76
        i32.const 3
        local.set 77
        local.get 76
        local.get 77
        i32.shl
        local.set 78
        local.get 5
        local.get 78
        i32.add
        local.set 79
        local.get 79
        f64.load
        local.set 80
        local.get 80
        local.get 67
        f64.div
        local.set 81
        local.get 79
        local.get 81
        f64.store
        i32.const 1
        local.set 82
        local.get 76
        local.get 82
        i32.add
        local.set 83
        local.get 83
        local.set 84
        local.get 0
        local.set 85
        local.get 84
        local.get 85
        i32.eq
        local.set 86
        i32.const 1
        local.set 87
        local.get 86
        local.get 87
        i32.and
        local.set 88
        local.get 83
        local.set 75
        local.get 88
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    return)
  (func $.Lmalloc_bitcast_invalid (type 10) (param i64) (result i32)
    unreachable)
  (func $augmented_bezier (type 3) (param f64 f64 f64 f64 f64) (result f64)
    (local f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    f64.const 0x1p+0 (;=1;)
    local.set 5
    local.get 5
    local.get 0
    f64.sub
    local.set 6
    local.get 6
    local.get 6
    f64.mul
    local.set 7
    local.get 6
    local.get 7
    f64.mul
    local.set 8
    f64.const 0x1.8p+1 (;=3;)
    local.set 9
    local.get 6
    local.get 9
    f64.mul
    local.set 10
    local.get 6
    local.get 10
    f64.mul
    local.set 11
    local.get 11
    local.get 0
    f64.mul
    local.set 12
    local.get 12
    local.get 2
    f64.mul
    local.set 13
    local.get 8
    local.get 1
    f64.mul
    local.set 14
    local.get 14
    local.get 13
    f64.add
    local.set 15
    local.get 10
    local.get 0
    f64.mul
    local.set 16
    local.get 16
    local.get 0
    f64.mul
    local.set 17
    local.get 17
    local.get 3
    f64.mul
    local.set 18
    local.get 18
    local.get 15
    f64.add
    local.set 19
    local.get 0
    local.get 0
    f64.mul
    local.set 20
    local.get 20
    local.get 0
    f64.mul
    local.set 21
    local.get 21
    local.get 4
    f64.mul
    local.set 22
    local.get 22
    local.get 19
    f64.add
    local.set 23
    local.get 23
    return)
  (func $diffebezier (type 11) (param i32 f64 f64 f64 f64 f64 f64)
    (local f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    f64.const 0x1p+0 (;=1;)
    local.set 7
    local.get 7
    local.get 1
    f64.sub
    local.set 8
    local.get 8
    local.get 8
    f64.mul
    local.set 9
    f64.const 0x1.8p+1 (;=3;)
    local.set 10
    local.get 8
    local.get 10
    f64.mul
    local.set 11
    local.get 8
    local.get 11
    f64.mul
    local.set 12
    local.get 12
    local.get 1
    f64.mul
    local.set 13
    local.get 11
    local.get 1
    f64.mul
    local.set 14
    local.get 14
    local.get 1
    f64.mul
    local.set 15
    local.get 1
    local.get 1
    f64.mul
    local.set 16
    local.get 16
    local.get 5
    f64.mul
    local.set 17
    local.get 17
    local.get 6
    f64.mul
    local.set 18
    local.get 6
    local.get 4
    f64.mul
    local.set 19
    local.get 15
    local.get 6
    f64.mul
    local.set 20
    local.get 19
    local.get 1
    f64.mul
    local.set 21
    local.get 19
    local.get 14
    f64.mul
    local.set 22
    local.get 21
    local.get 11
    f64.mul
    local.set 23
    local.get 21
    f64.neg
    local.set 24
    local.get 24
    local.get 1
    f64.mul
    local.set 25
    local.get 6
    local.get 2
    f64.mul
    local.set 26
    local.get 6
    local.get 3
    f64.mul
    local.set 27
    local.get 13
    local.get 6
    f64.mul
    local.set 28
    local.get 27
    local.get 1
    f64.mul
    local.set 29
    local.get 27
    local.get 12
    f64.mul
    local.set 30
    local.get 29
    local.get 11
    f64.mul
    local.set 31
    local.get 29
    local.get 8
    f64.mul
    local.set 32
    local.get 25
    local.get 32
    f64.sub
    local.set 33
    local.get 33
    local.get 18
    f64.add
    local.set 34
    local.get 34
    local.get 10
    f64.mul
    local.set 35
    local.get 9
    local.get 10
    f64.mul
    local.set 36
    local.get 26
    local.get 36
    f64.mul
    local.set 37
    local.get 37
    local.get 31
    f64.add
    local.set 38
    local.get 30
    local.get 22
    f64.add
    local.set 39
    local.get 39
    local.get 23
    f64.add
    local.set 40
    local.get 40
    local.get 35
    f64.add
    local.set 41
    local.get 41
    local.get 38
    f64.sub
    local.set 42
    local.get 0
    local.get 20
    f64.store offset=16
    local.get 0
    local.get 28
    f64.store offset=8
    local.get 0
    local.get 42
    f64.store
    return)
  (memory (;0;) 13)
  (global $__stack_pointer (mut i32) (i32.const 801056))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 801056))
  (global (;3;) i32 (i32.const 1028))
  (global (;4;) i32 (i32.const 1032))
  (global (;5;) i32 (i32.const 1036))
  (global (;6;) i32 (i32.const 1040))
  (global (;7;) i32 (i32.const 1024))
  (global (;8;) i32 (i32.const 1044))
  (global (;9;) i32 (i32.const 1056))
  (global (;10;) i32 (i32.const 801056))
  (global (;11;) i32 (i32.const 1024))
  (global (;12;) i32 (i32.const 851968))
  (global (;13;) i32 (i32.const 0))
  (global (;14;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "malloc" (func $malloc))
  (export "bump_pointer" (global 1))
  (export "free" (func $free))
  (export "bezier" (func $bezier))
  (export "loss" (func $loss))
  (export "dloss" (func $dloss))
  (export "dist" (func $dist))
  (export "zerodts" (func $zerodts))
  (export "zeroctrlp" (func $zeroctrlp))
  (export "learn" (func $learn))
  (export "__heap_base" (global 2))
  (export "enzyme_const" (global 3))
  (export "enzyme_dup" (global 4))
  (export "enzyme_dupnoneed" (global 5))
  (export "enzyme_out" (global 6))
  (export "__dso_handle" (global 7))
  (export "__data_end" (global 8))
  (export "__stack_low" (global 9))
  (export "__stack_high" (global 10))
  (export "__global_base" (global 11))
  (export "__heap_end" (global 12))
  (export "__memory_base" (global 13))
  (export "__table_base" (global 14))
  (data $.data (i32.const 1024) " 9\0c\00"))
