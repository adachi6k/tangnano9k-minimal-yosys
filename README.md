# Tang Nano 9K Blink Demo

## 必要ツール

- yosys
- nextpnr-himbaechel
- gowin_pack
- openFPGALoader

## ビルドと書き込み

```bash
make        # 合成〜bitstream生成
make prog   # FPGA に書き込み
make clean  # 中間ファイル削除
```

## ピン割り当て

- `clk`: PIN52 (27MHz クロック)
- `led1`: PIN10
- `led2`: PIN11
- `led3`: PIN13
- `led4`: PIN14
- `led5`: PIN15
- `led6`: PIN16
