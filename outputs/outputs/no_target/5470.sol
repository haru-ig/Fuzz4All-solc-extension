pragma solidity ^0.8.0;
contract O {
   function f() private {
        if (false) { f = true; } else {
    assert (false);
  f = true;

    }

   }
   function f() public {
        if (0) { f = true; } else {
    assert (true);
  }
    }
   function f() public {
        if (1) { f = true; } else {
  assert (false);
}
    }
   function f() public {
        if (255) { f = true; } else {
  f = true;

        }
    }
   function f() public {
        if (0 && 5) { f = true; } else {
  f = true;

        }

        }
   function f() public {
        if (0 && 0) { f = true; } else {
    assert (true);

        }
    }
    function f() public {
        if (0) { f = true; } else {
  f = true;
  assert (true);
}
    }
   function f() public {
        if (0 && 0) { f = true; } else {

        }
    }
   function f() public {
        if (0 && true) { f = true; }
    }
}
