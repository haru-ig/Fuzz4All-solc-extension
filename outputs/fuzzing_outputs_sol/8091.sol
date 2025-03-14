pragma solidity ^0.8.0;
contract SemanticEquivalentK3
{
  uint16 a;
  uint[] b;
  uint8 c;
  uint16 d;
  uint8 e;
  uint16 f;
}

contract SemanticEquivalent
{
  SemanticEquivalentK2 semanticEquivalentK2;
  SemanticEquivalentK3 semanticEquivalentK3;

  SemanticEquivalent(SemanticEquivalentK2 memory semanticEquivalentK2_) public {
    semanticEquivalentK2 = semanticEquivalentK2_;
  }
  SemanticEquivalent(SemanticEquivalentK3 memory semanticEquivalentK2) public {
    semanticEquivalentK3 = semanticEquivalentK2;
  }
  fallback () public {
    if (a == 1) {
      if (semanticEquivalentK2.a == semanticEquivalentK2.b) {
        if (semanticEquivalentK2.a == a) {
          if (semanticEquivalentK3.c + f == d)
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
          else {
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
          }
        } else if (a > semanticEquivalentK3.a) {
          if ( semanticEquivalentK3.d < semanticEquivalentK2.c )
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
          else
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
        } else if (a < semanticEquivalentK2.b) {
          if ( semanticEquivalentK2.b > semanticEquivalentK3.c )
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
          else
            assembly {
              mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
            }
        } else
          assembly {
            mstore8(0x40, return(sub(3, a, 1, a, 1, a, 1, a, 1, a)))
          }
      }
    }
  }
}
