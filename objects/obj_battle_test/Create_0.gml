globalvar selected, attacker, bench;
selected = -1;
attacker = -1;

for (var i = 0; i < 3; i++;)
	{
	bench[i] = -1;
	}
alarm_set(0, 2);

globalvar attacking;
attacking = -1;

_atkspd = 60;
alarm_set(1, _atkspd);

globalvar en_health, enemy;
for (var i = 0; i < 4; i++;)
	{
	en_health[i] = 100;
	}
enemy = 3;