window.sr = ScrollReveal()


sr.reveal('.headline',
{
    duration: 1600,
    origin: 'left',
    distance: '75px'
});


sr.reveal('.heroimage',
{
    duration: 1500,
    origin: 'bottom',
    distance: '300px'
});

sr.reveal('.headline1',
{   
    delay: 350,
    duration: 1000,
    origin: 'left',
    distance: '100px'
});

sr.reveal('.section1',
{
   duration:1800,
   viewfactor:0.5,
   scale:1.5
});

sr.reveal('.feature',
{   
    delay: 700,
    duration: 1000,
    origin: 'left',
    distance: '75px',
    viewfactor:2
});

sr.reveal('.deal',
{
   duration:1500,
   origin: 'left',
   viewfactor:1
});

sr.reveal('.dealcard',
{
    duration:1600,
    scale:1,
    interval:200
});

sr.reveal('#bestsales',
{
    duration:1600,
    scale:1,
    viewfactor:1
});