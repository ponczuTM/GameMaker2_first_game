function SlideTransition(_type, _room)
{
	with(oTransition)
	{
		mode = _type;
		if(argument_count > 1) target = _room;
	}
}