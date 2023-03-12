%test
import java.awt.Robot;
mouse = Robot;
mouse.mouseMove(0, 0);
screenSize = get(0, 'screensize');
for i = 1: screenSize(4)
    [A]=get(0,'PointerLocation');
    display(A)
    mouse.mouseMove(i*1.5, 0);
    pause(0.001);
end