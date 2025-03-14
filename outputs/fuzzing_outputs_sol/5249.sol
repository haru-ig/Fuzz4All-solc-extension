pragma solidity ^0.8.0;
contract A is Mutator3
{
        function c() private pure {
                Mutator3.c();
        }
}
contract B is A
{
        constructor() {
                B.c();
        }
}
contract B2 is A
{
        constructor() {
                B.c();
        }
}
contract C is A
{
        function b() private pure {
                B2.b();
        }
}
contract D
{
        function a() private pure {
                C.a();
        }
}
contract E
{
        function b() private pure {
                C.b();
        }
}

pragma solidity ^0.8.0;
contract A is Mutator3
{
        string storage foo = "default";
        bool public flag = false;
        constructor(string memory s) {
                foo = s;
                if (true) {

                }
        }
        function c() private pure {
                foo = "default";
        }
}
contract B is A
{
        string memory public bar = "default";
        uint8 public flag = 0;
        constructor() public {
                B.c();
                if (true) {
                        if (flag == 0) {
                                bar = "default";
                        }
                }
        }
        function b() public pure {
                bar = "default";
                B.c();
        }
}
contract D is E, A
{
        string memory public bar = "default";
        uint8 public flag = 0;

        constructor() public {
                d();
                if (flag == 0) {
                        bar = "default";
                }
        }

        function d() public pure {
                bar = "default";
                D.a();
        }
}
contract BWithCaller
{
      string foo;
      constructor() public {
        address a = hex"333333333333333333333333333333333333333";
        address b = hex"66666666666666666666666666666666666666666";
        address self = address(this);
          if (a < self) {
          foo = "a";
        bar();
        self;
              return;
          }
        B.b();
          bar; }
          function bar() private pure {
        B.b();
        }
}
contract BWithCaller2
{
      string foo;
      constructor() public {
        address a1 = hex"<KEY>";
        address b = hex"666666666666666666666666666666666666666";
        address self = address(this);
          if (self < a1) {
          foo = "self < a";
        bar();
        a1;
          return;
