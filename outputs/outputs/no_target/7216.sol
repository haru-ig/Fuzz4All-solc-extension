pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;

  function Mutate() public {
     while(true) {
        if(x >= max) {
          unchecked {
            x -= 733;
           x += 102;
            x += 546;
            x -= 236;
           x -= 53246;
          }
           x += 556;
            x -= 170;
            x += 905;
            x += 490;
            x -= 34;
            x += 99;
           x -= 48459;
            x += 5366;
            x -= 733;
           x -= 845;
            x += 26536;
            x += 35;
           x -= 495;
            x -= 12452;
            x -= 435;
           x -= 5467;
            x += 56467;
            x -= 62536;
            x -= 890;
           x += 75;
             x += 245;
             x += 57;
           x-=9000;
            x -= 390;
           x +=21234;
            x -= 135267;
            x -= 205;
           x -= 4819;
            x += 990;
            x -= 859666;
        }
      x -= 3;
      x -= 4;
    }
    return;
    }
    function Mutated() public {
        x += 2;
      }
    function setX() public {
      unchecked {
        x = 1;
      }
    }
    function setY() internal {
      unchecked {
        y = x;
      }
    }
}
