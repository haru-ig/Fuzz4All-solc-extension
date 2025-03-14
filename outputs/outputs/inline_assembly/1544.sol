pragma solidity ^0.8.0;
contract Mutant {
    uint256 x;
    uint256 a;
    constructor (uint256 c, uint256 d, uint256 xprev) public {
        y = 1 + c;
        x = 1 + 1000 + 10+10+xprev;
        xprev = x;
        a = msg.sender;
        d = d;
        a_ = y - y;
    }
    function mutate (uint256 h) public {
        xprev=0;
        a_+=h;
        xprev1=0;
        x= 1 + 1000 + 10+10+xprev;
        xprev=x;
        a=h;
    }
}
```

## Contributing

For those of you that are looking to contribute, we have a simple GitHub-based process for contributions.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contributors

* @adnan143
* @kakadu
* @gargan08
* @kartalinea0
