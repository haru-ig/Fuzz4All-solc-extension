pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   map = _m.map;
   i = _m.i;
  }
  int i;
  mapping(address => int) public map;
}

pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   i = _m.i;
    m = _m.map;
  }
  mapping(address => int) public map;
  int i;
  mapping(address => int) public m;
}

pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   i = _m.i;
    m = _m.map;
  }
  mapping(address => int) public map;
  int i;
  mapping(address => int) public m;
}

pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   m = _m.map;
  }
  mapping(address => int) public map;
  mapping(address => int) public m;
}

pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   i = _m.i;
    map = _m.map;
  }
  mapping(address => int) public map;
  int i;
}

pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i;
  }
  int i;
}

pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i;
    m = 10;
  }
  int m;
}
pragma solidity ^0.8.0;
contract M {
  constructor(M _m) public {
   map = _m.map;
  }
  mapping(address => int) public map;
}
