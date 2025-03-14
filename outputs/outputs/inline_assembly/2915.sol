pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    uint public m_z0;
    uint public m_z;
    uint public m_z2;
    uint z;
    constructor() public {
        set();
        m_z2 += 1;
        z = 1;
    }
    function set(M memory _m) public {
        z = 2;
        m_z += 1;
        set();
        m_z -= 1;
        set();
        m_z2 += 1;
        z = 1;
        m_z0 += 1;
    }
    function func() public {
        M memory _x;
        M memory _x2;
        set(_x);
        m_z0 += 1;
        m_z2 += 1;
        m_z0 *= 1;
    }
}
contract C {
    uint public m_z;
    uint public m_z0;
    uint public m_z1;
    constructor() public {}
    event LogEvent(uint z);
    require(m_z == 1, "C.not_initialised");
    address owner;
    uint public max_z = 1;
    function start() public {
        owner = msg.sender;
        start(false);
        start(false);
    }
    function start(bool success) public {
        address maker = msg.sender;
        address to = maker;
        uint z = 1;
        log(Maker(owner).send(z));
        uint balance;
        uint balance2;
        if(success)
            log(Owner(maker).setBalance(owner,z));
        while(z < max_z) {
            log(Maker(owner).send(z));
            z += 1;
            log(Maker(maker).send(z));
        }
        m_z = max_z;
        log(To(maker).setBalance(to,z));
        return;
    }
    function log(LogEvent memory aEvent) public {
        aEvent.z /= 1;
        emit aEvent(aEvent.z);
    }
    function log2(uint z) public {
        emit LogEvent(z);
    }
    function addLog() public
