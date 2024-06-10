# Use chainlink CCIP to develop a Cross-chain NFT
## Information
- Call chain: Fuji
- fuji sender: 0x74491ad7018FBa26E017dFdcf413d98fbE2C60F2
- Target chain: Sepolia
- sepolia receiver: 0x471051122c633c9Cc81DE71F7F6A1D3Be944a182
- CCIPNFT: 0xbC8c7c62E3DF8F6820D2eFE9D815151b3a745f76
- EVM: 0x408ea061DEF5E8E57Bd2569C9ca7d4Ce400860e0
## Problem
If you use code from chainlink ccip docs in remix now, you will meet a problem. Some of chainlink codes use openzepplin library, but in remix, it will automatically load the latest version of openzepplin. This cause compilation version conflicts. So I changed [executor.sol](./executor.sol) solidity compilation version from 0.8.19 to 0.8.20
