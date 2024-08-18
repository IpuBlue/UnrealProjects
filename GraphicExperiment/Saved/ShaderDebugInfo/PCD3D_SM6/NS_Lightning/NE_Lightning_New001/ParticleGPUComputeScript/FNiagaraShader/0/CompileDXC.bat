@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T cs_6_6 -E SimulateMainComputeCS -Fc NiagaraEmitterInstanceShader.d3dasm -Fo NiagaraEmitterInstanceShader.dxil NiagaraEmitterInstanceShader.usf
:END
PAUSE
