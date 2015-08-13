//Sometimes bullets get orphaned with 0 speed. They just sit there until they time out
//this script cleans them up.

if(speed == 0)
{
    instance_destroy();
}